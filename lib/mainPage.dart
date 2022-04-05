import 'package:beamer/beamer.dart';
import 'package:beamer_bad_state/locations.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _mainBeamerKey = GlobalKey<BeamerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Beamer(
        key: _mainBeamerKey,
        routerDelegate: BeamerDelegate(
          initialPath: '/clients',
          initializeFromParent: false,
          updateFromParent: false,
          locationBuilder: (routeInformation, _) =>
              MainLocation(routeInformation),
        ),
      ),
    );
  }
}
