import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.controller,
    required this.hintText,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.spacing = 8.0,
  });

  final String label;
  final TextEditingController? controller;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: spacing,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
