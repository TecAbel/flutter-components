import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('AA'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/28507035?s=200&v=4'),
          backgroundColor: Colors.indigo,
          maxRadius: 150,
          child: SizedBox(height: 150),
        ),
      ),
    );
  }
}
