import 'package:flutter/material.dart';
import 'package:routiner/features/habit/presentation/page/home_page.dart';
import 'package:routiner/common/pages/main_scafold.dart';
import 'package:routiner/features/profile/presentation/pages/profile_page.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  int _homePageTabIndex = 0;
  int _profilePageTabIndex = 0;

  List<Widget> get _pages =>  [
    HomePage(),
    ProfilePage( key: ValueKey(_profilePageTabIndex), tabIndex: _profilePageTabIndex),
    ProfilePage( key: ValueKey(_profilePageTabIndex), tabIndex: _profilePageTabIndex),
    ProfilePage( key: ValueKey(_profilePageTabIndex), tabIndex: _profilePageTabIndex),
    ProfilePage( key: ValueKey(_profilePageTabIndex), tabIndex: _profilePageTabIndex),
  ];

  PreferredSizeWidget? _buildAppBar() {
    switch (_selectedIndex) {
      case 0:
        return HomeAppBar(
          selectedIndex: _homePageTabIndex,
          onTabChange: _onHomeTabChanged,
        );
      case 4:
        return ProfileAppBar(
          selectedIndex: _profilePageTabIndex,
          onTabChange: _onProfileTabChanged,
        );
      default:
        return AppBar(
          title: const Text('Placeholder'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushNamed(context, '/onboarding');
              },
            ),
          ],
        );
    }
  }

  void _onTabSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  void _onProfileTabChanged(int index) {
    setState(() => _profilePageTabIndex = index);
  }

  void _onHomeTabChanged(int index) {
    setState(() => _homePageTabIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      appBar: _buildAppBar(),
      body: _pages[_selectedIndex],
      currentIndex: _selectedIndex,
      onTabSelected: _onTabSelected,
    );
  }
}
