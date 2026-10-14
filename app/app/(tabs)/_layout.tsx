import { Tabs } from 'expo-router';
import { useTheme } from '../../src/lib/theme-provider';
import { RichIcon } from '../../src/components/rich-icon';

export default function TabsLayout() {
  const { tokens } = useTheme();
  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        tabBarActiveTintColor: tokens.primary,
        tabBarInactiveTintColor: tokens.muted,
        tabBarStyle: {
          backgroundColor: tokens.background,
          borderTopColor: tokens.border,
        },
      }}
    >
      <Tabs.Screen
        name="spark"
        options={{
          title: 'Spark',
          tabBarIcon: ({ color, size, focused }) => (
            <RichIcon
              name="sparkles"
              size={size}
              tokens={tokens}
              variant="plain"
              color={color}
              active={focused}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="quizzes"
        options={{
          title: 'Quizzes',
          tabBarIcon: ({ color, size, focused }) => (
            <RichIcon
              name="albums"
              size={size}
              tokens={tokens}
              variant="plain"
              color={color}
              active={focused}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="memories"
        options={{
          title: 'Memories',
          tabBarIcon: ({ color, size, focused }) => (
            <RichIcon
              name="images"
              size={size}
              tokens={tokens}
              variant="plain"
              color={color}
              active={focused}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="draw"
        options={{
          title: 'Draw',
          tabBarIcon: ({ color, size, focused }) => (
            <RichIcon
              name="pencil"
              size={size}
              tokens={tokens}
              variant="plain"
              color={color}
              active={focused}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="distance"
        options={{
          title: 'Distance',
          tabBarIcon: ({ color, size, focused }) => (
            <RichIcon
              name="location"
              size={size}
              tokens={tokens}
              variant="plain"
              color={color}
              active={focused}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="more"
        options={{
          title: 'More',
          tabBarIcon: ({ color, size, focused }) => (
            <RichIcon
              name="ellipsis-horizontal"
              size={size}
              tokens={tokens}
              variant="plain"
              color={color}
              active={focused}
            />
          ),
        }}
      />
    </Tabs>
  );
}
