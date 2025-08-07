import 'package:flutter/material.dart';
import 'package:routiner/common/widgets/custom_bottom_nav.dart';
import 'package:routiner/features/habit/presentation/views/add_habit_dialog.dart';

class MainScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  const MainScaffold({
    super.key,
    required this.body,
    this.appBar,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          body,
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 12.0,
              ),
              child: CustomBottomNavBar(
                selectedIndex: currentIndex,
                onItemSelected: onTabSelected,
                onAddHabit: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    builder: (context) => const AddHabitDialog(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
