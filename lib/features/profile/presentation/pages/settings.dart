import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/l10n/app_localizations.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSoundEnabled = false;
  bool isVacationMode = false;
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(loc.settings),
        leading: CustomLeading(onTap: () => Navigator.of(context).pop()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(loc.general),
                Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(loc.general),
                          leading: Icon(
                            FontAwesomeIcons.solidBookmark,
                            size: 20,
                          ),
                          contentPadding: EdgeInsets.zero,
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(loc.security),
                          leading: Icon(FontAwesomeIcons.key, size: 20),
                          contentPadding: EdgeInsets.zero,
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(loc.notifications),
                          leading: Icon(FontAwesomeIcons.solidBell, size: 20),
                          contentPadding: EdgeInsets.zero,
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(loc.sounds),
                          leading: Icon(FontAwesomeIcons.volumeHigh, size: 20),
                          contentPadding: EdgeInsets.zero,
                          trailing: CupertinoSwitch(
                            activeTrackColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            value: isSoundEnabled,
                            onChanged: (value) {
                              setState(() {
                                isSoundEnabled = value;
                              });
                            },
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(loc.vacationMode),
                          leading: Icon(
                            FontAwesomeIcons.solidCirclePlay,
                            size: 20,
                          ),
                          contentPadding: EdgeInsets.zero,
                          trailing: CupertinoSwitch(
                            activeTrackColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            value: isVacationMode,
                            onChanged: (value) {
                              setState(() {
                                isVacationMode = value;
                              });
                            },
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.0,
              children: [
                Text(loc.aboutUs),
                Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(loc.rateApp),
                          leading: Icon(FontAwesomeIcons.solidStar, size: 20),
                          contentPadding: EdgeInsets.zero,
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(loc.shareWithFriends),
                          leading: Icon(FontAwesomeIcons.share, size: 20),
                          contentPadding: EdgeInsets.zero,
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(loc.aboutUs),
                          leading: Icon(FontAwesomeIcons.circleInfo, size: 20),
                          contentPadding: EdgeInsets.zero,
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(loc.support),
                          leading: Icon(
                            FontAwesomeIcons.solidMessage,
                            size: 20,
                          ),
                          contentPadding: EdgeInsets.zero,
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          onTap: () {
                            // Navigate to theme settings
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
