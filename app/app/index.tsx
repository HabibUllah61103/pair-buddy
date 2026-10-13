import { StyleSheet, Text, View } from 'react-native';

// Placeholder brand colors — final palette TBD, see docs/BRANDING.md.
const NAVY = '#123B63';
const TEAL = '#14B8A6';

export default function WelcomeScreen() {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Pair Buddy</Text>
      <Text style={styles.subtitle}>
        Coming soon: pairing, daily sparks, memories.
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: NAVY,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 24,
  },
  title: {
    color: '#FFFFFF',
    fontSize: 32,
    fontWeight: '700',
    marginBottom: 12,
  },
  subtitle: {
    color: TEAL,
    fontSize: 16,
    textAlign: 'center',
  },
});
