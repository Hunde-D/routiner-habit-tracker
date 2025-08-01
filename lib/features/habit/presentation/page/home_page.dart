
import 'package:flutter/material.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/common/widgets/custom_tab.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) => Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 12.0, 0.0, 12.0),
          child: CustomLeading(onTap: () => Scaffold.of(context).openDrawer(), leadingImage: const AssetImage('assets/icons/calendar.png'),),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 12.0, 24.0, 12.0),
            child: CustomLeading(
              leadingImage: const AssetImage('assets/icons/notification.png')
            ),
          ),
        ],
        bottom: PreferredSize(
    preferredSize: const Size.fromHeight(108),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 4.0,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, Mert 👋', style: Theme.of(context).textTheme.titleMedium,),
                    Text('Let’s make habits together!', style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 14),),
                  ],
                ),
              ),
              CircleAvatar(
                      backgroundColor: const Color(0xFFE5F1FF),
                      radius: 24,
                      child: const Text('😇', style: TextStyle(fontSize: 24)),
                    ),
              
            ],
          ),
          CustomTab(),
        ],
      ),
    ),
  ),
),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DatePicker(
              DateTime.now(),
              width: 48,
              height: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: Theme.of(context).colorScheme.surface,
              selectedTextColor: Theme.of(context).colorScheme.primary,
              daysCount: 30,
              onDateChange: (date) {
                // handle selection here
              },
              locale: "en_US",
              monthTextStyle: const TextStyle(
                fontSize: 0, // make it effectively invisible
                height: 0, // reduce spacing
              ),
              dateTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
              ),
              dayTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            const Center(child: Text('Calendar Timeline View')),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}