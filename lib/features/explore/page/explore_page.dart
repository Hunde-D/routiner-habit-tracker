import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routiner/app/data/challenges_dummy_data.dart';
import 'package:routiner/app/data/habit_dummy_data.dart';
import 'package:routiner/app/data/learnig_dummy_data.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/common/widgets/challenge_card.dart';
import 'package:routiner/common/widgets/learning_card.dart';
import 'package:routiner/common/widgets/popular_habits_card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 12.0, 0.0, 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 8,
              children: [
                Text(
                  'Suggested for you',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'View All',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 105,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return PopularHabitsCard(habit: popularGoodHabits[index]);
              },
              separatorBuilder: (_, _) => const SizedBox(width: 12.0),
              itemCount: popularGoodHabits.length,
            ),
          ),
          SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 8,
              children: [
                Text(
                  'Habit Clubs',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'View All',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 105,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return PopularHabitsCard(habit: habitClubs[index]);
              },
              separatorBuilder: (_, _) => const SizedBox(width: 12.0),
              itemCount: habitClubs.length,
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 8,
              children: [
                Text(
                  'Challenges',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'View All',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 140,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ChallengeCard(
                  challenge: challenges[index],
                  isExpanded: false,
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 12.0),
              itemCount: challenges.length,
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 8,
              children: [
                Text('Learning', style: Theme.of(context).textTheme.bodyLarge),
                Text(
                  'View All',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 150, // Set height for the learning cards section
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) {
          //       return LearningCard(learningItem: learningItems[index]);
          //     },
          //     separatorBuilder: (_, __) => const SizedBox(width: 12.0),
          //     itemCount: learningItems.length,
          //   ),
          // ),
          // SizedBox(
          //   height: 140,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) {
          //       return ChallengeCard(
          //         challenge: challenges[index],
          //         isExpanded: false,
          //       );
          //     },
          //     separatorBuilder: (_, __) => const SizedBox(width: 12.0),
          //     itemCount: challenges.length,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ExploreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text('Explore'),
      actions: [
        CustomLeading(
          leadingIcon: FontAwesomeIcons.magnifyingGlass,
          padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
        ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 16.0);

}
