import 'package:flutter/material.dart';
import 'package:routiner/app/data/challenges_dummy_data.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/common/widgets/custom_tab.dart';
import 'package:routiner/l10n/app_localizations.dart';

class LeaderboardPage extends StatelessWidget {
  LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6B73FF), Color(0xFF000DFF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          Positioned.fill(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                    Opacity(
                      opacity: 0.4,
                      child: Container(
                        width: 40 + (i * 80),
                        height: 40 + (i * 80),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey.shade50.withOpacity(
                              1.0 - (i * 0.2),
                            ),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),

          // 3. The content of the page is now on top of the background
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 10,
                      child: Icon(
                        Icons.emoji_events,
                        color: Colors.amber,
                        size: 40,
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          buildPlayerColumn(
                            name: leaderboard[0]['name'],
                            points: leaderboard[0]['points'],
                            rank: "2nd",
                            image: leaderboard[0]['image'],
                            isFirst: false,
                            context: context,
                          ),
                          buildPlayerColumn(
                            name: leaderboard[1]['name'],
                            points: leaderboard[1]['points'],
                            rank: "1st",
                            image: leaderboard[1]['image'],
                            isFirst: true,
                            context: context,
                          ),
                          buildPlayerColumn(
                            name: leaderboard[2]['name'],
                            points: leaderboard[2]['points'],
                            rank: "3rd",
                            image: leaderboard[2]['image'],
                            isFirst: false,
                            context: context,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: leaderboard.length - 3,
                    itemBuilder: (context, index) {
                      final player = leaderboard[index + 3];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 0.1),
                              spreadRadius: 1,
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.grey.shade200,
                              child: Text(
                                (index + 4).toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    player['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${player['points']} Points',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(player['image']),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget buildPlayerColumn({
    required String name,
    required int points,
    required String rank,
    required String image,
    bool isFirst = false,
    double yOffset = 0,
    required BuildContext context,
  }) {
    return Transform.translate(
      offset: Offset(0, yOffset),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 16,
            ),
            width: 80,
            height: isFirst ? 140 : 112,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(80),
            ),
            child: Column(
              children: [
                Text(
                  rank,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 4),
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
                    '🥇 1440',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
    );
  }

}




class LeadersboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LeadersboardAppBar({
    super.key,
    required this.selectedIndex,
    this.onTabChange,
  });
  final int selectedIndex;
  final ValueChanged<int>? onTabChange;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 80);

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return AppBar(
      title: Text(loc.leadersboard),
      leading: CustomLeading(
        padding: const EdgeInsets.fromLTRB(24.0, 12.0, 0.0, 12.0),
        onTap: () => Navigator.of(context).pop(),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(108),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 16.0),
          child: CustomTab(
            tabs: [loc.weekly, loc.monthly],
            selectedIndex: selectedIndex,
            onTabChange: onTabChange,
          ),
        ),
      ),
    );
  }
}
