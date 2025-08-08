import 'package:flutter/material.dart';

enum HabitType { good, bad }

class Habit {
  final String title;
  final String goal;
  final String emoji;
  final Color color;
  final String? extraInfo;

  Habit({
    required this.title,
    required this.goal,
    required this.emoji,
    required this.color,
    this.extraInfo,
  });
}

final List<Habit> popularGoodHabits = [
  Habit(title: "Walk", goal: "10 km", emoji: "🚶‍♂️", color: Color(0xFFFCDCD3)),
  Habit(
    title: "Swim",
    goal: "30 min",
    emoji: "🏊‍♀️",
    color: Color(0xFFD7D9FF),
  ),
  Habit(title: "Read", goal: "20 min", emoji: "📖", color: Color(0xFFD5ECE0)),
];

final List<Habit> badHabitsToQuit = [
  Habit(
    title: "Smoking",
    goal: "0 cigarettes",
    emoji: "🚬",
    color: Color(0xFFFFE8E8),
    extraInfo: "Day 3 of quitting",
  ),
  Habit(
    title: "Junk Food",
    goal: "Max 1/week",
    emoji: "🍔",
    color: Color(0xFFFFF2D5),
    extraInfo: "Replace with healthy snacks",
  ),
  Habit(
    title: "No Alcohol",
    goal: "0 drinks",
    emoji: "🍺",
    color: Color(0xFFE3F2FD),
    extraInfo: "Week 1 sober",
  ),
];
// ======= Habit Clubs =======

final List<Habit> habitClubs = [
  Habit(
    title: "Runners",
    goal: "336 members",
    emoji: "🏃‍♂️",
    color: Color(0xFFFFFFFF),
  ),
  Habit(
    title: "Coders Unite",
    goal: "612 members",
    emoji: "🧑‍💻",
    color: Color(0xFFFFFFFF),
  ),
  Habit(
    title: "Tea Lovers",
    goal: "278 members",
    emoji: "🍵",
    color: Color(0xFFFFFFFF),
  ),
  Habit(
    title: "Bookworms",
    goal: "712 members",
    emoji: "📖",
    color: Color(0xFFFFFFFF),
  ),
  Habit(
    title: "Nature Seekers",
    goal: "289 members",
    emoji: "🌿",
    color: Color(0xFFFFFFFF),
  ),
  Habit(
    title: "Cat Lovers",
    goal: "462 members",
    emoji: "🐱",
    color: Color(0xFFFFFFFF),
  ),
];
