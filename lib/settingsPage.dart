import 'package:beamer/beamer.dart';
import 'package:beamer_bad_state/locations.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _settingsBeamerKey = GlobalKey<BeamerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Beamer(
        key: _settingsBeamerKey,
        routerDelegate: BeamerDelegate(
          initialPath: '/settings/profile',
          initializeFromParent: false,
          updateFromParent: false,
          locationBuilder: (routeInformation, _) =>
              SettingsLocation(routeInformation),
        ),
      ),
    );
  }
}
