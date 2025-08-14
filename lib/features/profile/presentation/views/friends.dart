import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:routiner/app/data/profile_dummy_data.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/l10n/app_localizations.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Column(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              loc.friendsCount(friendsList.length),
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                CustomLeading(
                  leadingIcon: FontAwesomeIcons.plus,
                  size: const Size(36, 36),
                  iconSize: 20,
                  borderRadius: 12.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.0,
                    vertical: 12.0,
                  ),
                ),
                CustomLeading(
                  leadingIcon: FontAwesomeIcons.pencil,
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
                  size: const Size(36, 36),
                  iconSize: 20,
                  borderRadius: 12.0,
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
            itemCount: friendsList.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final item = friendsList[index];
              return Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    spacing: 12.0,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFE5F1FF),
                        radius: 18,
                        child: Image.asset(
                          item.avatarUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '${item.points} Points',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      CustomLeading(
                        leadingIcon: LucideIcons.trash2,
                        size: const Size(36, 36),
                        iconSize: 20,
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