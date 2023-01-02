import 'package:components/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBar: AppBar(), title: 'Alert'),
      body: const Center(child: Text('AlertScreen')),
    );
  }
}
