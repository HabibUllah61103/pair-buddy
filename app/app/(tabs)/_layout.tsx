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
          backgroundColor: tokens.card,
          borderTopColor: tokens.border,
          borderTopWidth: 1,
          elevation: 12,
          shadowColor: '#000000',
          shadowOffset: { width: 0, height: -4 },
          shadowOpacity: 0.12,
          shadowRadius: 12,
          height: 68,
          paddingBottom: 10,
          paddingTop: 6,
        },
        tabBarLabelStyle: {
          fontSize: 11,
          fontWeight: '700',
          marginTop: 2,
        },
      }}
    >
      <Tabs.Screen
        name="spark"
        options={{
          title: 'Spark',
          tabBarIcon: ({ color, focused }) => (
            <RichIcon
              name="sparkles"
              size={26}
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
          tabBarIcon: ({ color, focused }) => (
            <RichIcon
              name="albums"
              size={26}
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
          tabBarIcon: ({ color, focused }) => (
            <RichIcon
              name="images"
              size={26}
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
          tabBarIcon: ({ color, focused }) => (
            <RichIcon
              name="pencil"
              size={26}
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
          tabBarIcon: ({ color, focused }) => (
            <RichIcon
              name="location"
              size={26}
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
          tabBarIcon: ({ color, focused }) => (
            <RichIcon
              name="ellipsis-horizontal"
              size={26}
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
