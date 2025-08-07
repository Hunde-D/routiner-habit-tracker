import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routiner/common/widgets/gradient_icon_button.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
    this.onAddHabit,
  });
  final int selectedIndex;
  final Function(int) onItemSelected;
  final VoidCallback? onAddHabit;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(64),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.outline,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(64),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildNavIcon(
                icon: FontAwesomeIcons.house,
                index: 0,
                context: context,
              ),
              _buildNavIcon(
                icon: FontAwesomeIcons.solidCompass,
                index: 1,
                context: context,
              ),
              GradientIconButton(
                icon: FontAwesomeIcons.circlePlus,
                onPressed: onAddHabit,
              ),
              _buildNavIcon(
                icon: FontAwesomeIcons.medal,
                index: 3,
                context: context,
              ),
              _buildNavIcon(
                icon: FontAwesomeIcons.solidUser,
                index: 4,
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavIcon({
    required IconData icon,
    required int index,
    required BuildContext context,
    double size = 24.0,
  }) {
    return IconButton(
      icon: FaIcon(
        icon,
        size: size,
        color: selectedIndex == index
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).iconTheme.color,
      ),
      onPressed: () => onItemSelected(index),
    );
  }
}
