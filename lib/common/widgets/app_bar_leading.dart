import 'package:flutter/material.dart';

class CustomLeading extends StatelessWidget {
  const CustomLeading({
    super.key,
    this.onTap,
    this.leadingImage,
    this.leadingIcon = Icons.arrow_back_ios_new_rounded ,
    this.size = const Size(48, 48),
    this.iconSize = 24,
  });

  final IconData leadingIcon;
  final ImageProvider? leadingImage;
  final double iconSize;
  final Size size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(   
      onTap: onTap,
      child: Container(
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: leadingImage != null
            ? Image(image: leadingImage!, width: iconSize, height: iconSize)
            : Icon(leadingIcon, size: iconSize),
      ),
    );
  }
}
