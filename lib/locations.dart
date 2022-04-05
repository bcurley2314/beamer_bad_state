import 'package:beamer/beamer.dart';
import 'package:beamer_bad_state/clientsPage.dart';
import 'package:beamer_bad_state/mainPage.dart';
import 'package:beamer_bad_state/profilePage.dart';
import 'package:flutter/material.dart';

class AppLocation extends BeamLocation<BeamState> {
  AppLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        if (state.pathPatternSegments.contains('clients'))
          const BeamPage(
            key: ValueKey('main'),
            title: 'Main',
            child: MainPage(),
          ),
        if (state.pathPatternSegments.contains('settings'))
          const BeamPage(
            key: ValueKey('settings'),
            title: 'Settings',
            child: MainPage(),
          ),
      ];
}

class MainLocation extends BeamLocation<BeamState> {
  MainLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        if (state.pathPatternSegments.contains('clients'))
          const BeamPage(
            key: ValueKey('clients'),
            title: 'Clients',
            child: ClientsPage(),
          ),
      ];
}

class SettingsLocation extends BeamLocation<BeamState> {
  SettingsLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<String> get pathPatterns => ['/settings/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        if (state.pathPatternSegments.contains('profile'))
          const BeamPage(
            key: ValueKey('profile'),
            title: 'Settings - Profile',
            child: ProfilePage(),
          ),
      ];
}
