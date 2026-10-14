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
import { COLORS } from '../../src/theme';

const NAVY = COLORS.navy;
const CARD = '#1A3A5C';
const TEAL = COLORS.teal;
const CORAL = '#FF6B5E';
const WHITE = COLORS.white;
const MUTED = COLORS.muted;

type Phase = 'loading' | 'error' | 'ready';

export default function MemoriesScreen() {
  const [phase, setPhase] = useState<Phase>('loading');
  const [memories, setMemories] = useState<Memory[]>([]);
  const [myUserId, setMyUserId] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [selected, setSelected] = useState<Memory | null>(null);
  const [deleting, setDeleting] = useState(false);

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

  const renderItem = ({ item }: { item: Memory }) => (
    <MemoryCard memory={item} onPress={() => setSelected(item)} />
  );

  return (
    <View style={styles.container}>
      <View style={styles.headerRow}>
        <View>
          <Text style={styles.header}>Memories</Text>
          <Text style={styles.lede}>Photos you have shared with each other.</Text>
        </View>
        <Pressable
          style={styles.addButton}
          onPress={() => void pickPhoto()}
          accessibilityLabel="Add a memory"
        >
          <Ionicons name="add" size={26} color={WHITE} />
        </Pressable>
      </View>

      {phase === 'loading' ? (
        <ActivityIndicator color={TEAL} style={styles.loader} />
      ) : phase === 'error' ? (
        <View style={styles.center}>
          <Text style={styles.error}>{error}</Text>
          <Pressable style={styles.retry} onPress={() => void load()}>
            <Text style={styles.retryText}>Try again</Text>
          </Pressable>
        </View>
      ) : memories.length === 0 ? (
        <View style={styles.center}>
          <Ionicons name="images-outline" size={48} color={MUTED} />
          <Text style={styles.emptyTitle}>No memories yet</Text>
          <Text style={styles.emptyHint}>
            Add your first photo together using the + button.
          </Text>
        </View>
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
          <Pressable style={styles.modalCard} onPress={() => undefined}>
            {selected?.signed_url ? (
              <Image
                source={{ uri: selected.signed_url }}
                style={styles.modalImage}
                resizeMode="cover"
              />
            ) : (
              <View style={[styles.modalImage, styles.imageFallback]}>
                <Ionicons name="image-outline" size={40} color={MUTED} />
              </View>
            )}
            <View style={styles.modalMeta}>
              <Text style={styles.modalCaption}>
                {selected?.caption?.trim()
                  ? selected.caption
                  : 'Untitled memory'}
              </Text>
              <Text style={styles.modalSub}>
                {selected ? formatMemoryDate(selected.created_at) : ''} ·{' '}
                {selected?.creator_name ?? ''}
              </Text>
              <View style={styles.modalActions}>
                <Pressable
                  style={styles.closeButton}
                  onPress={() => setSelected(null)}
                >
                  <Text style={styles.closeText}>Close</Text>
                </Pressable>
                {selected && myUserId && selected.created_by === myUserId ? (
                  <Pressable
                    style={styles.deleteButton}
                    onPress={() => confirmDelete(selected)}
                    disabled={deleting}
                  >
                    {deleting ? (
                      <ActivityIndicator color={WHITE} size="small" />
                    ) : (
                      <Text style={styles.deleteText}>Delete</Text>
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
          <View style={styles.sheet}>
            {pendingUri ? (
              <Image
                source={{ uri: pendingUri }}
                style={styles.sheetImage}
                resizeMode="cover"
              />
            ) : null}
            <TextInput
              style={styles.captionInput}
              placeholder="Add a caption (optional)"
              placeholderTextColor={MUTED}
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
                <Text style={styles.closeText}>Cancel</Text>
              </Pressable>
              <Pressable
                style={styles.uploadButton}
                onPress={() => void upload()}
                disabled={uploading}
              >
                {uploading ? (
                  <ActivityIndicator color={WHITE} size="small" />
                ) : (
                  <Text style={styles.uploadText}>Save memory</Text>
                )}
              </Pressable>
            </View>
          </View>
        </View>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: NAVY, paddingTop: 64 },
  headerRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 20,
    marginBottom: 12,
  },
  header: { color: WHITE, fontSize: 28, fontWeight: '700' },
  lede: { color: MUTED, fontSize: 15, marginTop: 6 },
  addButton: {
    width: 44,
    height: 44,
    borderRadius: 22,
    backgroundColor: TEAL,
    alignItems: 'center',
    justifyContent: 'center',
  },
  loader: { marginTop: 40 },
  center: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 32 },
  error: { color: CORAL, fontSize: 15, textAlign: 'center', marginBottom: 16 },
  retry: {
    backgroundColor: TEAL,
    borderRadius: 10,
    paddingVertical: 10,
    paddingHorizontal: 20,
  },
  retryText: { color: WHITE, fontWeight: '700' },
  emptyTitle: { color: WHITE, fontSize: 20, fontWeight: '700', marginTop: 16 },
  emptyHint: { color: MUTED, fontSize: 15, textAlign: 'center', marginTop: 8 },
  list: { paddingHorizontal: 14, paddingBottom: 24 },
  modalBackdrop: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.7)',
    alignItems: 'center',
    justifyContent: 'center',
    padding: 24,
  },
  modalCard: {
    width: '100%',
    backgroundColor: CARD,
    borderRadius: 16,
    overflow: 'hidden',
  },
  modalImage: { width: '100%', aspectRatio: 1, backgroundColor: '#14283F' },
  imageFallback: { alignItems: 'center', justifyContent: 'center' },
  modalMeta: { padding: 16 },
  modalCaption: { color: WHITE, fontSize: 17, fontWeight: '700' },
  modalSub: { color: MUTED, fontSize: 13, marginTop: 6 },
  modalActions: { flexDirection: 'row', justifyContent: 'flex-end', marginTop: 16 },
  closeButton: {
    borderRadius: 10,
    paddingVertical: 10,
    paddingHorizontal: 18,
    marginRight: 8,
  },
  closeText: { color: MUTED, fontWeight: '700' },
  deleteButton: {
    backgroundColor: CORAL,
    borderRadius: 10,
    paddingVertical: 10,
    paddingHorizontal: 18,
    minWidth: 90,
    alignItems: 'center',
  },
  deleteText: { color: WHITE, fontWeight: '700' },
  sheetBackdrop: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.6)',
    justifyContent: 'flex-end',
  },
  sheet: {
    backgroundColor: CARD,
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    padding: 20,
  },
  sheetImage: { width: '100%', aspectRatio: 16 / 9, borderRadius: 12 },
  captionInput: {
    backgroundColor: '#14283F',
    color: WHITE,
    borderRadius: 10,
    padding: 12,
    marginTop: 12,
    fontSize: 15,
  },
  sheetActions: { flexDirection: 'row', justifyContent: 'flex-end', marginTop: 12 },
  uploadButton: {
    backgroundColor: TEAL,
    borderRadius: 10,
    paddingVertical: 10,
    paddingHorizontal: 18,
    minWidth: 130,
    alignItems: 'center',
  },
  uploadText: { color: WHITE, fontWeight: '700' },
});
