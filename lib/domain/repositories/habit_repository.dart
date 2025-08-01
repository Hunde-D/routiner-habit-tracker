import 'package:routiner/domain/entities/habit_entity.dart';

abstract class HabitRepository {
  Future<void> createHabit(HabitEntity habit);
  Stream<List<HabitEntity>> getHabits();
  Future<void> deleteHabit(String habitId);
}
