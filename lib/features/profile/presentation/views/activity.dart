import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:routiner/app/data/profile_dummy_data.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Show last month activity',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
            ),
            CustomLeading(
              leadingIcon: LucideIcons.settings2,
              size: const Size(36, 36),
              borderRadius: 12.0,
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
            itemCount: activityList.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final item = activityList[index];
              IconData icon;
              Color iconColor;
              switch (item.type) {
                case ActivityType.pointsUp:
                  icon = FontAwesomeIcons.arrowUp;
                  iconColor = Colors.green;
                  break;
                case ActivityType.pointsDown:
                  icon = FontAwesomeIcons.arrowDown;
                  iconColor = Colors.red;
                  break;
                case ActivityType.challengeComplete:
                  icon = FontAwesomeIcons.medal;
                  iconColor = Colors.orange;
                  break;
              }
              return Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 12.0,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            item.subtitle,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      CustomLeading(
                        leadingIcon: icon,
                        size: const Size(36, 36),
                        iconSize: 20,
                        iconColor: iconColor,
                        borderRadius: 12,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}