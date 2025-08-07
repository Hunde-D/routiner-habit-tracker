import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/common/widgets/avatar_stack.dart';
import 'package:routiner/common/widgets/challenge_card.dart';
import 'package:routiner/common/widgets/custom_tab.dart';
import 'package:routiner/common/widgets/date_timeline.dart';
import 'package:routiner/common/widgets/habit_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      children: [
        const DateTimeline(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 8,
                children: [
                  Text(
                    'Challenges',
                    style: Theme.of(context).textTheme.bodyMedium,
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
              ChallengeCard(
                title: 'Best Runners! 🏃‍♂️',
                subtitle: '5 days 13 hours left',
                progress: 0.25,
                emoji: '🕓',
                // icon: ,
                avatarWidget: AvatarStack(
                  imageUrls: [
                    'assets/images/onboarding/avatar-small.png',
                    'assets/images/onboarding/avatar-medium.png',
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 8,
                children: [
                  Text('Habits', style: Theme.of(context).textTheme.bodyMedium),
                  Text(
                    'View All',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              HabitCard(
                title: 'Drink the water',
                subtitle: '1000/2000 ML',
                progress: 0.5,
                emoji: '💧',
                avatarWidget: AvatarStack(
                  imageUrls: [
                    'assets/images/onboarding/avatar-small.png',
                    'assets/images/onboarding/avatar-medium.png',
                    'assets/images/onboarding/avatar-large.png',
                    'assets/images/onboarding/avatar-large.png',
                    'assets/images/onboarding/avatar-large.png',
                  ],
                ),
              ),
              HabitCard(
                title: 'Walk',
                subtitle: '7500/10000 STEPS',
                progress: 0.75,
                emoji: '🚶‍♂️',
                avatarWidget: AvatarStack(
                  imageUrls: [
                    'assets/images/onboarding/avatar-small.png',
                    'assets/images/onboarding/avatar-medium.png',
                  ],
                ),
              ),
              HabitCard(
                title: 'Meditation',
                subtitle: '30/30 MIN',
                progress: 1.0,
                emoji: '🧘‍♀️',
                avatarWidget: AvatarStack(
                  imageUrls: ['assets/images/onboarding/avatar-small.png'],
                ),
              ),
              HabitCard(
                title: 'Meditation',
                subtitle: '30/30 MIN',
                progress: 1.0,
                emoji: '🧘‍♀️',
                avatarWidget: AvatarStack(
                  imageUrls: ['assets/images/onboarding/avatar-small.png'],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key, required this.selectedIndex, this.onTabChange});

  final int selectedIndex;
  final ValueChanged<int>? onTabChange;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) => CustomLeading(
          onTap: () => Scaffold.of(context).openDrawer(),
          leadingIcon: Icons.calendar_month,
        ),
      ),
      actions: [
        CustomLeading(
          leadingIcon: Icons.settings,
          padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(108),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 4.0,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Hunde 👋',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Let’s make habits together!',
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: const Color(0xFFE5F1FF),
                    radius: 24,
                    child: const Text('😇', style: TextStyle(fontSize: 24)),
                  ),
                ],
              ),
              CustomTab(
                tabs: ['Today', 'Clubs'],
                selectedIndex: selectedIndex,
                onTabChange: onTabChange,
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 120);
}