import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routiner/common/widgets/add_mood.dart';
import 'package:routiner/common/widgets/gradient_icon_button.dart';
import 'package:routiner/common/widgets/add_habit_.dart';

class AddHabitDialog extends StatelessWidget {
  const AddHabitDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8.0,
        children: [
          AddHabitCards(),
          AddMood(),
          GradientIconButton(
            icon: FontAwesomeIcons.solidCircleXmark,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

