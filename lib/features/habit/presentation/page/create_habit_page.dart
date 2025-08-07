import 'package:flutter/material.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/common/widgets/custom_text_field.dart';
import 'package:routiner/common/widgets/habit_goal_setting.dart';
import 'package:routiner/common/widgets/habit_icon_color_selector.dart';

class CreateHabitPage extends StatefulWidget {
  const CreateHabitPage({Key? key}) : super(key: key);

  @override
  State<CreateHabitPage> createState() => _CreateHabitPageState();
}

class _CreateHabitPageState extends State<CreateHabitPage> {
  final TextEditingController _habitNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Custom Habit'),
        leading: CustomLeading(onTap: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16.0,
            children: [
              CustomTextField(
                label: 'NAME',
                hintText: 'Enter your habit name',
                controller: _habitNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your habit name';
                  }
                  if (value.length < 3) {
                    return 'Habit name must be at least 3 characters long';
                  }
                  return null;
                },
              ),
              const HabitIconColorSelector(),
              const HabitGoalSetting(),
            ],
          ),
        ),
      ),
    );
  }
}
