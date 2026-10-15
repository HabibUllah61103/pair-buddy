import { BlurView } from 'expo-blur';
import { StyleSheet, View } from 'react-native';
import { Tabs } from 'expo-router';
import { useTheme } from '../../src/lib/theme-provider';
import { RichIcon } from '../../src/components/rich-icon';

export default function TabsLayout() {
  const { tokens, mode } = useTheme();
  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        tabBarActiveTintColor: tokens.primary,
        tabBarInactiveTintColor: tokens.muted,
        tabBarBackground: () => (
          <View style={StyleSheet.absoluteFillObject}>
            <View
              style={[
                StyleSheet.absoluteFillObject,
                {
                  backgroundColor:
                    mode === 'dark'
                      ? 'rgba(22, 17, 28, 0.92)'
                      : 'rgba(255, 255, 255, 0.92)',
                },
              ]}
            />
            <BlurView
              intensity={60}
              tint={mode === 'dark' ? 'dark' : 'light'}
              style={StyleSheet.absoluteFillObject}
            />
          </View>
        ),
        tabBarStyle: {
          backgroundColor: 'transparent',
          borderTopColor: tokens.border,
          borderTopWidth: 1,
          elevation: 0,
          shadowColor: '#000000',
          shadowOffset: { width: 0, height: -4 },
          shadowOpacity: 0.08,
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
