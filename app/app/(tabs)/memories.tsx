import { useCallback, useState } from 'react';
import {
  ActivityIndicator,
  Alert,
  FlatList,
  Image,
  Modal,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import { useFocusEffect } from 'expo-router';
import * as ImagePicker from 'expo-image-picker';
import MemoryCard, { formatMemoryDate } from '../../src/components/memory-card';
import {
  addMemory,
  deleteMemory,
  getMyUserId,
  listMemories,
  type Memory,
} from '../../src/lib/memories';
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';
import { GradientHeader } from '../../src/components/gradient-header';
import { LinearGradient } from 'expo-linear-gradient';
import { FadeInView, SpringPress } from '../../src/components/animated';
import { RichIcon } from '../../src/components/rich-icon';

type Phase = 'loading' | 'error' | 'ready';

export default function MemoriesScreen() {
  const { tokens, mode } = useTheme();
  const [phase, setPhase] = useState<Phase>('loading');
  const [memories, setMemories] = useState<Memory[]>([]);
  const [myUserId, setMyUserId] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [selected, setSelected] = useState<Memory | null>(null);
  const [deleting, setDeleting] = useState(false);
  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-hearts-dreamy.png');

  // Add-memory flow state.
  const [pendingUri, setPendingUri] = useState<string | null>(null);
  const [caption, setCaption] = useState('');
  const [uploading, setUploading] = useState(false);

  const load = useCallback(async () => {
    setPhase('loading');
    setError(null);
    const [listRes, uid] = await Promise.all([listMemories(), getMyUserId()]);
    if (listRes.error || !listRes.data) {
      setError(listRes.error ?? 'Could not load memories.');
      setPhase('error');
      return;
    }
    setMemories(listRes.data);
    setMyUserId(uid);
    setPhase('ready');
  }, []);

  useFocusEffect(
    useCallback(() => {
      void load();
    }, [load]),
  );

  const pickPhoto = useCallback(async () => {
    const result = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ['images'],
      allowsEditing: true,
      quality: 0.8,
    });
    if (!result.canceled && result.assets[0]?.uri) {
      setCaption('');
      setPendingUri(result.assets[0].uri);
    }
  }, []);

  const upload = useCallback(async () => {
    if (!pendingUri || uploading) return;
    setUploading(true);
    const res = await addMemory(pendingUri, caption);
    setUploading(false);
    if (res.error || !res.data) {
      Alert.alert('Upload failed', res.error ?? 'Could not save this memory.');
      return;
    }
    setPendingUri(null);
    setCaption('');
    void load();
  }, [pendingUri, caption, uploading, load]);

  const doDelete = useCallback(
    async (memory: Memory) => {
      setDeleting(true);
      const res = await deleteMemory(memory.id);
      setDeleting(false);
      if (res.error) {
        Alert.alert('Delete failed', res.error);
        return;
      }
      setSelected(null);
      void load();
    },
    [load],
  );

  const confirmDelete = useCallback(
    (memory: Memory) => {
      Alert.alert(
        'Delete memory?',
        'This removes the photo for both of you. This cannot be undone.',
        [
          { text: 'Cancel', style: 'cancel' },
          {
            text: 'Delete',
            style: 'destructive',
            onPress: () => void doDelete(memory),
          },
        ],
      );
    },
    [doDelete],
  );

  const renderItem = ({ item, index }: { item: Memory; index: number }) => (
    <FadeInView delay={index * 80} style={styles.itemWrap}>
      <MemoryCard memory={item} onPress={() => setSelected(item)} />
    </FadeInView>
  );

  return (
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <GradientHeader
        title="Memories"
        subtitle="Photos you have shared with each other"
        tokens={tokens}
        right={
          <SpringPress
            onPress={() => void pickPhoto()}
            accessibilityLabel="Add a memory"
          >
            <LinearGradient
              colors={['rgba(255,255,255,0.35)', 'rgba(255,255,255,0.2)']}
              style={styles.addButton}
            >
              <Ionicons name="add" size={26} color="#FFFFFF" />
            </LinearGradient>
          </SpringPress>
        }
      />

      {phase === 'loading' ? (
        <ActivityIndicator color={tokens.primary} style={styles.loader} />
      ) : phase === 'error' ? (
        <View style={styles.center}>
          <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
          <SpringPress onPress={() => void load()}>
            <LinearGradient colors={tokens.gradient} start={{ x: 0, y: 0 }} end={{ x: 1, y: 0 }} style={styles.retry}>
              <Text style={styles.retryText}>Try again</Text>
            </LinearGradient>
          </SpringPress>
        </View>
      ) : memories.length === 0 ? (
        <FadeInView delay={100} style={styles.center}>
          <Image
            source={require('../../assets/mascot-empty.png')}
            style={styles.mascot}
            resizeMode="contain"
          />
          <Text style={[styles.emptyTitle, { color: tokens.ink }]}>No memories yet</Text>
          <Text style={[styles.emptyHint, { color: tokens.muted }]}>
            Add your first photo together using the + button.
          </Text>
        </FadeInView>
      ) : (
        <FlatList
          data={memories}
          keyExtractor={(m) => m.id}
          renderItem={renderItem}
          numColumns={2}
          contentContainerStyle={styles.list}
        />
      )}

      {/* Detail modal */}
      <Modal
        visible={selected !== null}
        transparent
        animationType="fade"
        onRequestClose={() => setSelected(null)}
      >
        <Pressable style={styles.modalBackdrop} onPress={() => setSelected(null)}>
          <Pressable style={[styles.modalCard, { backgroundColor: tokens.card }]} onPress={() => undefined}>
            {selected?.signed_url ? (
              <Image
                source={{ uri: selected.signed_url }}
                style={styles.modalImage}
                resizeMode="cover"
              />
            ) : (
              <View style={[styles.modalImage, styles.imageFallback, { backgroundColor: tokens.background }]}>
                <RichIcon name="image-outline" size={28} tokens={tokens} variant="soft" />
              </View>
            )}
            <View style={styles.modalMeta}>
              <Text style={[styles.modalCaption, { color: tokens.ink }]}>
                {selected?.caption?.trim()
                  ? selected.caption
                  : 'Untitled memory'}
              </Text>
              <Text style={[styles.modalSub, { color: tokens.muted }]}>
                {selected ? formatMemoryDate(selected.created_at) : ''} ·{' '}
                {selected?.creator_name ?? ''}
              </Text>
              <View style={styles.modalActions}>
                <Pressable
                  style={styles.closeButton}
                  onPress={() => setSelected(null)}
                >
                  <Text style={[styles.closeText, { color: tokens.muted }]}>Close</Text>
                </Pressable>
                {selected && myUserId && selected.created_by === myUserId ? (
                  <Pressable
                    style={[styles.deleteButton, { backgroundColor: tokens.danger }]}
                    onPress={() => confirmDelete(selected)}
                    disabled={deleting}
                  >
                    {deleting ? (
                      <ActivityIndicator color={tokens.white} size="small" />
                    ) : (
                      <Text style={[styles.deleteText, { color: tokens.white }]}>Delete</Text>
                    )}
                  </Pressable>
                ) : null}
              </View>
            </View>
          </Pressable>
        </Pressable>
      </Modal>

      {/* Caption sheet */}
      <Modal
        visible={pendingUri !== null}
        transparent
        animationType="slide"
        onRequestClose={() => setPendingUri(null)}
      >
        <View style={styles.sheetBackdrop}>
          <View style={[styles.sheet, { backgroundColor: tokens.card }]}>
            {pendingUri ? (
              <Image
                source={{ uri: pendingUri }}
                style={styles.sheetImage}
                resizeMode="cover"
              />
            ) : null}
            <TextInput
              style={[styles.captionInput, { backgroundColor: tokens.background, color: tokens.ink }]}
              placeholder="Add a caption (optional)"
              placeholderTextColor={tokens.muted}
              value={caption}
              onChangeText={setCaption}
              maxLength={140}
              editable={!uploading}
            />
            <View style={styles.sheetActions}>
              <Pressable
                style={styles.closeButton}
                onPress={() => setPendingUri(null)}
                disabled={uploading}
              >
                <Text style={[styles.closeText, { color: tokens.muted }]}>Cancel</Text>
              </Pressable>
              <Pressable
                onPress={() => void upload()}
                disabled={uploading}
              >
                <LinearGradient colors={tokens.gradient} start={{ x: 0, y: 0 }} end={{ x: 1, y: 0 }} style={styles.uploadButton}>
                  {uploading ? (
                    <ActivityIndicator color="#FFFFFF" size="small" />
                  ) : (
                    <Text style={styles.uploadText}>Save memory</Text>
                  )}
                </LinearGradient>
              </Pressable>
            </View>
          </View>
        </View>
      </Modal>
    </View>
  );
}

const BUBBLY_SHADOW = {
  shadowColor: '#000',
  shadowOffset: { width: 0, height: 4 },
  shadowOpacity: 0.08,
  shadowRadius: 12,
  elevation: 3,
};

const styles = StyleSheet.create({
  container: { flex: 1 },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  itemWrap: { flex: 1 },
  addButton: {
    width: 48,
    height: 48,
    borderRadius: 24,
    alignItems: 'center',
    justifyContent: 'center',
  },
  loader: { marginTop: 40 },
  center: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 32 },
  error: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center', marginBottom: 16 },
  retry: {
    borderRadius: 18,
    paddingVertical: 14,
    paddingHorizontal: 24,
    alignItems: 'center',
  },
  retryText: { fontFamily: FONTS.bodyBold, color: '#FFFFFF', fontSize: 16 },
  mascot: { width: 180, height: 180, alignSelf: 'center', marginBottom: 8 },
  emptyTitle: { fontFamily: FONTS.headingBold, fontSize: 24, marginTop: 16 },
  emptyHint: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center', marginTop: 8 },
  list: { paddingHorizontal: 14, paddingBottom: 24, paddingTop: 20 },
  modalBackdrop: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.7)',
    alignItems: 'center',
    justifyContent: 'center',
    padding: 24,
  },
  modalCard: {
    width: '100%',
    borderRadius: 24,
    overflow: 'hidden',
    ...BUBBLY_SHADOW,
  },
  modalImage: { width: '100%', aspectRatio: 1 },
  imageFallback: { alignItems: 'center', justifyContent: 'center' },
  modalMeta: { padding: 16 },
  modalCaption: { fontFamily: FONTS.bodyBold, fontSize: 17 },
  modalSub: { fontFamily: FONTS.body, fontSize: 13, marginTop: 6 },
  modalActions: { flexDirection: 'row', justifyContent: 'flex-end', marginTop: 16 },
  closeButton: {
    borderRadius: 10,
    paddingVertical: 10,
    paddingHorizontal: 18,
    marginRight: 8,
  },
  closeText: { fontFamily: FONTS.bodyBold },
  deleteButton: {
    borderRadius: 10,
    paddingVertical: 10,
    paddingHorizontal: 18,
    minWidth: 90,
    alignItems: 'center',
  },
  deleteText: { fontFamily: FONTS.bodyBold },
  sheetBackdrop: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.6)',
    justifyContent: 'flex-end',
  },
  sheet: {
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    padding: 20,
  },
  sheetImage: { width: '100%', aspectRatio: 16 / 9, borderRadius: 12 },
  captionInput: {
    fontFamily: FONTS.body,
    borderRadius: 10,
    padding: 12,
    marginTop: 12,
    fontSize: 15,
  },
  sheetActions: { flexDirection: 'row', justifyContent: 'flex-end', marginTop: 12 },
  uploadButton: {
    borderRadius: 18,
    paddingVertical: 14,
    paddingHorizontal: 20,
    minWidth: 130,
    alignItems: 'center',
  },
  uploadText: { fontFamily: FONTS.bodyBold, color: '#FFFFFF', fontSize: 16 },
});
