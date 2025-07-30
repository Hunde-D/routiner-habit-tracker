import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  final String title;
  final String countText;
  final double progress;
  final IconData? icon;
  final String? emoji;
  final double iconSize;
  final Color iconColor;
  final VoidCallback? onAddTap;
  final Widget? avatarWidget;
  
  const HabitCard({
    super.key,
    required this.title,
    required this.countText,
    required this.progress,
    this.icon,
    this.iconSize = 24.0,
    this.iconColor = Colors.blueAccent,
    this.emoji,
    this.onAddTap,
    this.avatarWidget,
  }): assert(icon != null || emoji != null, 'Either icon or emoji must be provided'), 
      assert(icon != null || emoji != null, 'Provide only one: icon OR emoji');

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 3,
                      backgroundColor: Colors.grey.shade200,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.blueAccent,
                      ),
                    ),
                    if (emoji != null)
                      Text(
                        emoji!,
                        style: TextStyle(fontSize: 20),
                      )
                    else if (icon != null)
                      Icon(icon, color: iconColor, size: iconSize),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(title), Text(countText)],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                if (avatarWidget != null) avatarWidget!,
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: InkWell(
                    onTap: onAddTap,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Icon(Icons.add, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
