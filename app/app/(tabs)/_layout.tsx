import { Tabs } from 'expo-router';
import { Ionicons } from '@expo/vector-icons';
import { COLORS } from '../../src/theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;
const MUTED = COLORS.muted;

export default function TabsLayout() {
  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        tabBarActiveTintColor: TEAL,
        tabBarInactiveTintColor: MUTED,
        tabBarStyle: { backgroundColor: NAVY, borderTopColor: '#1E3A5C' },
      }}
    >
      <Tabs.Screen
        name="spark"
        options={{
          title: 'Spark',
          tabBarIcon: ({ color, size }) => (
            <Ionicons name="sparkles" color={color} size={size} />
          ),
        }}
      />
      <Tabs.Screen
        name="quizzes"
        options={{
          title: 'Quizzes',
          tabBarIcon: ({ color, size }) => (
            <Ionicons name="albums" color={color} size={size} />
          ),
        }}
      />
      <Tabs.Screen
        name="memories"
        options={{
          title: 'Memories',
          tabBarIcon: ({ color, size }) => (
            <Ionicons name="images" color={color} size={size} />
          ),
        }}
      />
      <Tabs.Screen
        name="draw"
        options={{
          title: 'Draw',
          tabBarIcon: ({ color, size }) => (
            <Ionicons name="pencil" color={color} size={size} />
          ),
        }}
      />
      <Tabs.Screen
        name="distance"
        options={{
          title: 'Distance',
          tabBarIcon: ({ color, size }) => (
            <Ionicons name="location" color={color} size={size} />
          ),
        }}
      />
      <Tabs.Screen
        name="more"
        options={{
          title: 'More',
          tabBarIcon: ({ color, size }) => (
            <Ionicons name="ellipsis-horizontal" color={color} size={size} />
          ),
        }}
      />
    </Tabs>
  );
}
