class Challenge {
  final String title;
  final String subtitle;
  final double progress;
  final String emoji;
  final int friendsJoined;
  final List<String> friendAvatars;

  Challenge({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.emoji,
    required this.friendsJoined,
    required this.friendAvatars,
  });
}

final List<Challenge> challenges = [
  Challenge(
    title: 'Best Runners!',
    subtitle: '5 days 13 hours left',
    progress: 0.9,
    emoji: '🏃‍♂️',
    friendsJoined: 2,
    friendAvatars: ['assets/images/onboarding/avatar-small.png', 'assets/images/onboarding/avatar-medium.png'],
  ),
  Challenge(
    title: 'Best Bikers!',
    subtitle: '2 days 11 hours left',
    progress: 0.5,
    emoji: '🚴‍♂️',
    friendsJoined: 1,
    friendAvatars: ['assets/images/onboarding/avatar-large.png'],
  ),
];
