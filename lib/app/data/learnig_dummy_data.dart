class LearningItem {
  final String title;
  final String subtitle;
  final String backgroundImage;

  LearningItem({
    required this.title,
    required this.backgroundImage,
    this.subtitle = '', // Subtitle is optional
  });
}

final List<LearningItem> learningItems = [
  LearningItem(
    title: 'Why should we drink water often?',
    backgroundImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkr6i-BIltgM7LC1ri2eNpgVgDtXqCwNrAA&s',
  ),
  LearningItem(
    title: 'Benefits of regular walking',
    backgroundImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkr6i-BIltgM7LC1ri2eNpgVgDtXqCwNrAA&s',
  ),
  LearningItem(
    title: '5-minute meditation techniques',
    backgroundImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkr6i-BIltgM7LC1ri2eNpgVgDtXqCwNrAA&s',
  ),
];
