import { StyleSheet, Text, View } from 'react-native';

const NAVY = '#123B63';
const MUTED = '#8AA0B8';

export default function DrawScreen() {
  return (
    <View style={styles.center}>
      <Text style={styles.title}>Draw</Text>
      <Text style={styles.hint}>
        The shared drawing canvas will live here. Coming in the drawing PR.
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
