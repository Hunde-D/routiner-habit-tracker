class HabitEntity {
  final String id;
  final String name;
  final String emoji;
  final List<String> days; // ['Mon', 'Tue']
  final DateTime createdAt;

  HabitEntity({
    required this.id,
    required this.name,
    required this.emoji,
    required this.days,
    required this.createdAt,
  });
}
