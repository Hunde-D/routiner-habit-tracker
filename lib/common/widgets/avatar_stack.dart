import 'package:flutter/material.dart';

class AvatarStack extends StatelessWidget {
  const AvatarStack({
    super.key,
    required this.imageUrls,
    this.size = 24.53,
    this.overlap = 7.01,
    this.maxDisplayed = 2,
  });

  final List<String> imageUrls;
  final double size;
  final double overlap;
  final int maxDisplayed;

  @override
  Widget build(BuildContext context) {
    final total = imageUrls.length;
    final displayList = imageUrls.take(maxDisplayed).toList();
    final remaining = total - maxDisplayed;
    final double avatarRadius = size / 2;
    final count = displayList.length + (remaining > 0 ? 1 : 0);
    final totalWidth = size + (count - 1) * (size - overlap);
    return SizedBox(
      height: size,
      width: totalWidth,
      child: Stack(
        children: [
          for (int i = 0; i < displayList.length; i++)
            Positioned(
              left: i * (size - overlap),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.grey.shade100,
                ),
                child: CircleAvatar(
                  radius: avatarRadius,
                  backgroundImage: AssetImage(displayList[i]),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          if (remaining > 0)
            Positioned(
              left: totalWidth - size,
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundColor: Theme.of(
                  context,
                ).colorScheme.secondaryContainer,
                child: Text(
                  '+$remaining ',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
