


// ========== Profile Activity Data ==========
import 'package:flutter/material.dart';

enum ActivityType { pointsUp, pointsDown, challengeComplete }

class ActivityItem {
  final String title;
  final String subtitle;
  final DateTime dateTime;
  final ActivityType type;

  ActivityItem({
    required this.title,
    required this.subtitle,
    required this.dateTime,
    required this.type,
  });
}

final List<ActivityItem> activityList = [
  ActivityItem(
    title: '112 points earned!',
    subtitle: 'Today, 12:34 PM',
    dateTime: DateTime.now().subtract(Duration(hours: 2)),
    type: ActivityType.pointsUp,
  ),
  ActivityItem(
    title: '62 points earned!',
    subtitle: 'Today, 07:12 AM',
    dateTime: DateTime.now().subtract(Duration(hours: 7)),
    type: ActivityType.pointsUp,
  ),
  ActivityItem(
    title: 'Challenge completed!',
    subtitle: 'Yesterday, 14:12 PM',
    dateTime: DateTime.now().subtract(Duration(days: 1)),
    type: ActivityType.challengeComplete,
  ),
  ActivityItem(
    title: 'Weekly winning streak is broken!',
    subtitle: '12 Jun, 16:14 PM',
    dateTime: DateTime(2025, 6, 12, 16, 14),
    type: ActivityType.pointsDown,
  ),
  ActivityItem(
    title: '96 points earned!',
    subtitle: '11 Jun, 17:45 PM',
    dateTime: DateTime(2025, 6, 11, 17, 45),
    type: ActivityType.pointsUp,
  ),
  ActivityItem(
    title: '110 points earned!',
    subtitle: '10 Jun, 18:32 PM',
    dateTime: DateTime(2025, 6, 10, 18, 32),
    type: ActivityType.pointsUp,
  ),
];


// ========== Friend List Data ==========
class Friend {
  final String name;
  final String avatarUrl;
  final int points;

  Friend({required this.name, required this.avatarUrl, required this.points});
}

final List<Friend> friendsList = [
  Friend(
    name: 'Sharie Bento',
    avatarUrl: 'assets/images/onboarding/avatar-large.png',
    points: 912,
  ),
  Friend(
    name: 'Micah Dantoni',
    avatarUrl: 'assets/images/onboarding/avatar-medium.png',
    points: 912,
  ),
  Friend(
    name: 'Oral Padlo',
    avatarUrl: 'assets/images/onboarding/avatar-small.png',
    points: 912,
  ),
  Friend(
    name: 'Regina Stire',
    avatarUrl: 'assets/images/onboarding/avatar-large.png',
    points: 912,
  ),
  Friend(
    name: 'Maressa Mcdiarmid',
    avatarUrl: 'assets/images/onboarding/avatar-medium.png',
    points: 912,
  ),
  Friend(
    name: 'Jennings Stohler',
    avatarUrl: 'assets/images/onboarding/avatar-small.png',
    points: 912,
  ),
];

// ========== Profile Achievement Data ==========
class Achievement {
  final String title;
  final DateTime date;
  final String emoji;
  final Color color;
  Achievement({
    required this.title,
    required this.date,
    required this.emoji,
    required this.color,
  });
}

final List<Achievement> achievementList = [
  Achievement(
    title: 'Best Runner',
    date: DateTime.now().subtract(Duration(days: 60)),
    emoji: '🏃‍♂️',
    color: Color(0xFFDDF2FC),
  ),
  Achievement(
    title: 'Best of the month',
    date: DateTime.now().subtract(Duration(days: 2)),
    emoji: '🥇',
    color: Color(0xFFFFF3DA),
  ),
];