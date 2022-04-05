import 'package:beamer/beamer.dart';
import 'package:beamer_bad_state/locations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routerDelegate = BeamerDelegate(
    initialPath: '/clients',
    locationBuilder: (routeInformation, _) => AppLocation(routeInformation),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
