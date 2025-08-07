import 'package:flutter/material.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';

class HabitItem {
  final IconData icon;
  final String name;
  final Color borderColor;

  HabitItem({
    required this.icon,
    required this.name,
    this.borderColor = Colors.transparent,
  });
}
class OnboardingChooseHabits extends StatefulWidget {
  const OnboardingChooseHabits({super.key});

  @override
  State<OnboardingChooseHabits> createState() => _OnboardingChooseHabitsState();
}

class _OnboardingChooseHabitsState extends State<OnboardingChooseHabits> {
    final List<HabitItem> _habits = [
    HabitItem(icon: Icons.water_drop, name: 'Drink water'),
    HabitItem(icon: Icons.directions_run, name: 'Run'),
    HabitItem(icon: Icons.book, name: 'Read books'),
    HabitItem(
      icon: Icons.self_improvement,
      name: 'Meditate',
    ),
    HabitItem(
      icon: Icons.laptop_mac,
      name: 'Study',
    ),
    HabitItem(
      icon: Icons.menu_book,
      name: 'Journal',
    ),
    HabitItem(icon: Icons.eco, name: 'Planting'),
    HabitItem(
      icon: Icons.nightlight_round,
      name: 'Sleep',
    ),
  ];
  int? _selectedHabitIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habits'),
        leading: CustomLeading(onTap: () => Navigator.pop(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0,20.0, 24.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Choose your first habits',
                    style: Theme.of(context).textTheme.titleMedium,
                ),
                Text('You may add more habits later',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                )),
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded(child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 1.0,
                ),
              itemCount: _habits.length,
              itemBuilder: (context, index) {
                final habit = _habits[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedHabitIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardTheme.color,
                      border: Border.all(
                        width: 1.0,
                        color: _selectedHabitIndex == index
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(habit.icon, size: 40.0),
                        const SizedBox(height: 24.0),
                        Text(habit.name, style: Theme.of(context).textTheme.titleSmall),
                      ],
                    ),
                  ),
                );
              },
            ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}