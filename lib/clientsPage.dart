import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  State<ClientsPage> createState() => _MainPageState();
}

class _MainPageState extends State<ClientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('clients Page'),
          ElevatedButton(
              onPressed: () => context.beamToNamed('/settings/profile'),
              child: const Text('go to settings'))
        ],
      ),
    );
  }
}
