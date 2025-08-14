// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Routiner';

  @override
  String get hiUser => 'Hi,';

  @override
  String get greeting => 'Let\'s make habits together!';

  @override
  String get createGoodHabits => 'Create Good Habits';

  @override
  String get trackYourProgress => 'Track Your Progress';

  @override
  String get habits => 'Habits';

  @override
  String get challenges => 'Challenges';

  @override
  String get today => 'Today';

  @override
  String get clubs => 'Clubs';

  @override
  String get viewAll => 'VIEW ALL';

  @override
  String get leadersboard => 'Leadersboard';

  @override
  String get weekly => 'Weekly';

  @override
  String get monthly => 'Monthly';

  @override
  String get yourProfile => 'Your Profile';

  @override
  String points(Object count) {
    return '🥇$count Points';
  }

  @override
  String get activity => 'Activity';

  @override
  String get friends => 'Friends';

  @override
  String get achievements => 'Achievements';

  @override
  String get lastMonthActivity => 'Showing last month activity';

  @override
  String friendsCount(Object count) {
    return '$count Friends';
  }

  @override
  String achievementsCount(Object count) {
    return '$count Achievements';
  }

  @override
  String get explore => 'Explore';

  @override
  String get suggestedForYou => 'Suggested for You';

  @override
  String get habitClubs => 'Habit Clubs';

  @override
  String membersCount(Object count) {
    return '$count members';
  }

  @override
  String get learning => 'Learning';

  @override
  String timeLeft(Object days, Object hours) {
    return '$days days $hours hours left';
  }

  @override
  String friendsJoined(Object count) {
    return '$count friends joined';
  }

  @override
  String get settings => 'Settings';

  @override
  String get general => 'General';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get security => 'Security';

  @override
  String get notifications => 'Notifications';

  @override
  String get sounds => 'Sounds';

  @override
  String get vacationMode => 'Vacation Mode';

  @override
  String get aboutUs => 'About Us';

  @override
  String get support => 'Support';

  @override
  String get rateApp => 'Rate Routiner';

  @override
  String get shareWithFriends => 'Share with Friends';
}
