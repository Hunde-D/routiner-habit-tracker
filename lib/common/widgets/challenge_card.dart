import 'package:flutter/material.dart';
import 'package:routiner/app/data/challenges_dummy_data.dart';
import 'package:routiner/common/widgets/avatar_stack.dart';

class ChallengeCard extends StatelessWidget {
  final Challenge challenge;
  final VoidCallback? onAddTap;
  final bool isExpanded;

  const ChallengeCard({
    super.key,
    required this.challenge,
    this.onAddTap,
    this.isExpanded = true,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: isExpanded
            ? _buildExpandedLayout(context)
            : _buildCompactLayout(context),
      ),
    );
  }

  Widget _buildExpandedLayout(BuildContext context) {
    return Column(
      spacing: 8.0,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10.0,
          children: [
            Row(
              spacing: 10.0,
              children: [
                _buildEmojiContainer(),
                _buildTitleAndSubtitle(context),
              ],
            ),
            if (challenge.friendAvatars.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AvatarStack(imageUrls: challenge.friendAvatars),
                  Text(
                    '${challenge.friendsJoined} friend${challenge.friendsJoined == 1 ? '' : 's'} joined',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
          ],
        ),
        _buildLinearProgressIndicator(context),
      ],
    );
  }

  Widget _buildCompactLayout(BuildContext context) {
    return Container(
      width: 168,
      height: 128,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          _buildEmojiContainer(),
          _buildTitleAndSubtitle(context),
          _buildLinearProgressIndicator(context),
          if (challenge.friendAvatars.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 10.0,
              children: [
                AvatarStack(imageUrls: challenge.friendAvatars),
                Text(
                  '${challenge.friendsJoined} friend${challenge.friendsJoined == 1 ? '' : 's'} joined',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildEmojiContainer() {
    return SizedBox(
      width: 31.54,
      height: 31.54,
      child: Center(
        child: Text(challenge.emoji, style: const TextStyle(fontSize: 24)),
      ),
    );
  }

  Widget _buildLinearProgressIndicator(BuildContext context) {
    return SizedBox(
      height: 3.5,
      child: LinearProgressIndicator(
        value: challenge.progress,
        backgroundColor: Theme.of(context).colorScheme.outline,
        valueColor: AlwaysStoppedAnimation<Color>(
          Theme.of(context).colorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(7.0),
        trackGap: 25.0,
      ),
    );
  }

  Widget _buildTitleAndSubtitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(challenge.title, style: Theme.of(context).textTheme.labelMedium),
        Text(challenge.subtitle, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}
