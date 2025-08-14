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

// ===Leaders Board ===
final List<Map<String, dynamic>> leaderboard = [
  {
    "name": "MirayK",
    "points": 1223,
    "rank": 2,
    "image": "assets/images/onboarding/avatar-medium.png",
  },
  {
    "name": "Mert Kahveci",
    "points": 1452,
    "rank": 1,
    "image": "assets/images/onboarding/avatar-small.png",
  },
  {
    "name": "Onur O.",
    "points": 968,
    "rank": 3,
    "image": "assets/images/onboarding/avatar-large.png",
  },
  {
    "name": "Jennings Stohler",
    "points": 912,
    "rank": 4,
    "image": "assets/images/onboarding/avatar-medium.png",
  },
  {
    "name": "Scotty Tovias",
    "points": 846,
    "rank": 5,
    "image": "assets/images/onboarding/avatar-large.png",
  },
  {
    "name": "Amelina Aguila",
    "points": 771,
    "rank": 6,
    "image": "assets/images/onboarding/avatar-medium.png",
  },
  {
    "name": "Kally Cirrincione",
    "points": 693,
    "rank": 7,
    "image": "assets/images/onboarding/avatar-small.png",
  },
  {
    "name": "Layla Schupbach",
    "points": 555,
    "rank": 8,
    "image": "assets/images/onboarding/avatar-large.png",
  },
];
