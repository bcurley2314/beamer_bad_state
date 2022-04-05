import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _MainPageState();
}

class _MainPageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('settings > profile Page'),
          ElevatedButton(
              onPressed: () => context.beamToNamed('/clients'),
              child: const Text('go to clients'))
        ],
      ),
    );
  }
}
