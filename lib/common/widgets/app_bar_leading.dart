import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomLeading extends StatelessWidget {
  const CustomLeading({
    super.key,
    this.onTap,
    this.leadingIcon = FontAwesomeIcons.chevronLeft,
    this.size = const Size(48, 48),
    this.iconSize = 24,
    this.borderRadius = 16.0,
    this.iconColor,
    this.padding = const EdgeInsets.fromLTRB(24.0, 12.0, 0.0, 12.0),
  });

  final IconData leadingIcon;
  final double iconSize;
  final Color? iconColor;
  final Size size;
  final VoidCallback? onTap;
  final double borderRadius;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Theme.of(context).colorScheme.outline),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Icon(
            leadingIcon,
            size: iconSize,
            color: iconColor ?? Theme.of(context).iconTheme.color,
          ),
        ),
      ),
    );
  }
}
