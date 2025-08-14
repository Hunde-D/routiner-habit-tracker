import 'package:flutter/material.dart';
import 'package:routiner/app/data/challenges_dummy_data.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/common/widgets/avatar_stack.dart';
import 'package:routiner/common/widgets/challenge_card.dart';
import 'package:routiner/common/widgets/custom_tab.dart';
import 'package:routiner/common/widgets/date_timeline.dart';
import 'package:routiner/common/widgets/habit_card.dart';
import 'package:routiner/l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      children: [
        const DateTimeline(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14.0),
            gradient: LinearGradient(
              colors: [Color(0xFF6B73FF), Color(0xFF000DFF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Card(
            color: Colors.transparent,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Row(
                spacing: 12.0,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: CircularProgressIndicator(
                          value: 0.25,
                          strokeWidth: 1.75,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.surface.withValues(alpha: 0.3),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ),
                      Text(
                        '%${25}',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your daily goals almost done! 🔥',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      Text(
                        '1 of 4 completed',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(
                            context,
                          ).colorScheme.surface.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                    loc.challenges,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    loc.viewAll,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              ChallengeCard(challenge: challenges[0], onAddTap: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 8,
                children: [
                  Text(
                    loc.habits,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    loc.viewAll,
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
    final loc = AppLocalizations.of(context)!;
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
                          '${loc.hiUser} Hunde 👋',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          loc.greeting,
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
                tabs: [loc.today, loc.clubs],
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
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 125);
}
