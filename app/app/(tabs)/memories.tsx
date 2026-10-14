import { StyleSheet, Text, View } from 'react-native';

const NAVY = '#123B63';
const MUTED = '#8AA0B8';

export default function MemoriesScreen() {
  return (
    <View style={styles.center}>
      <Text style={styles.title}>Memories</Text>
      <Text style={styles.hint}>
        Your shared photo memories will live here. Coming in the memories PR.
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  center: {
    flex: 1,
    backgroundColor: NAVY,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 32,
  },
  title: { color: '#FFFFFF', fontSize: 24, fontWeight: '800', marginBottom: 12 },
  hint: { color: MUTED, fontSize: 15, textAlign: 'center', lineHeight: 22 },
});
