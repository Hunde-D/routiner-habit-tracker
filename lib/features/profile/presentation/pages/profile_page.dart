import 'package:flutter/material.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/common/widgets/custom_tab.dart';
import 'package:routiner/features/profile/presentation/views/achievements.dart';
import 'package:routiner/features/profile/presentation/views/activity.dart';
import 'package:routiner/features/profile/presentation/views/friends.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, this.tabIndex});

  final int? tabIndex;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: _getTabView(widget.tabIndex ?? 0),
    );
  }

  Widget _getTabView(int index) {
    switch (index) {
      case 0:
        return const Activity();
      case 1:
        return const Friends();
      case 2:
        return const Achievements();
      default:
        return const Center(child: Text('Resource not found'));
    }
  }
}

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
    required this.selectedIndex,
    this.onTabChange,
  });
  final int selectedIndex;
  final ValueChanged<int>? onTabChange;

  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 182);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Your Profile'),
      leading: CustomLeading(
        padding: const EdgeInsets.fromLTRB(24.0, 12.0, 0.0, 12.0),
        onTap: () => Navigator.of(context).pop(),
      ),
      actions: [
        CustomLeading(
          leadingIcon: Icons.settings,
          padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
          onTap: () {
            Navigator.of(context).pushNamed('/settings');
          },
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
                spacing: 8.0,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xFFE5F1FF),
                    radius: 38,
                    child: Text(
                      '😇',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4.0,
                      children: [
                        Text(
                          'Hunde Desalegn',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4.0,
                            vertical: 2.0,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF3DA),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            '🥇1460 Points',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontSize: 14,
                                  color: Color(0xFFFEA800),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomTab(
                tabs: ['Activity', 'Friends', 'Achievements'],
                selectedIndex: selectedIndex,
                onTabChange: onTabChange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
