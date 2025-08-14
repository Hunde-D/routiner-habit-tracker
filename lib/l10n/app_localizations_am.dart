// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appTitle => 'ሩቲነር';

  @override
  String get hiUser => 'ሰላም፣';

  @override
  String get greeting => 'ልማዶችን አብረን እንስራ!';

  @override
  String get createGoodHabits => 'ጥሩ ልማዶችን ፍጠር';

  @override
  String get trackYourProgress => 'እድገትህን አስተካክል';

  @override
  String get habits => 'ልማዶች';

  @override
  String get challenges => 'ፈተናዎች';

  @override
  String get today => 'ዛሬ';

  @override
  String get clubs => 'ክለቦች';

  @override
  String get viewAll => 'ሁሉንም እይ';

  @override
  String get leadersboard => 'የአሸናፊዎች ሰንጠረዥ';

  @override
  String get weekly => 'ሳምንታዊ';

  @override
  String get monthly => 'ወርሃዊ';

  @override
  String get yourProfile => 'ፕሮፋይልህ';

  @override
  String points(Object count) {
    return '🥇$count ነጥቦች';
  }

  @override
  String get activity => 'እንቅስቃሴ';

  @override
  String get friends => 'ጓደኞች';

  @override
  String get achievements => 'ስኬቶች';

  @override
  String get lastMonthActivity => 'ያለፈው ወር እንቅስቃሴ ታይቷል';

  @override
  String friendsCount(Object count) {
    return '$count ጓደኞች';
  }

  @override
  String achievementsCount(Object count) {
    return '$count ስኬቶች';
  }

  @override
  String get explore => 'አስሱ';

  @override
  String get suggestedForYou => 'ለእርስዎ የተጠቀሰ';

  @override
  String get habitClubs => 'የልማድ ክለቦች';

  @override
  String membersCount(Object count) {
    return '$count አባላት';
  }

  @override
  String get learning => 'ትምህርት';

  @override
  String timeLeft(Object days, Object hours) {
    return 'የቀረው $days ቀናት $hours ሰዓት';
  }

  @override
  String friendsJoined(Object count) {
    return '$count ጓደኞች ተቀላቅለዋል';
  }

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get general => 'አጠቃላይ';

  @override
  String get darkMode => 'ጨለማ ሁነታ';

  @override
  String get security => 'ደህንነት';

  @override
  String get notifications => 'ማሳወቂያዎች';

  @override
  String get sounds => 'ድምጾች';

  @override
  String get vacationMode => 'በዓል ሁነታ';

  @override
  String get aboutUs => 'ስለ እኛ';

  @override
  String get support => 'ድጋፍ';

  @override
  String get rateApp => 'አፕ ደረጃ ስጥ';

  @override
  String get shareWithFriends => 'ከጓደኞች ጋር አጋራ';
}
