import 'package:components/widgets/widgets_index.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      children: [
        Column(
          children: const [
            SimpleCardWidget(),
            SizedBox(height: 20),
            SimpleCard2(
                name: 'Rick C137',
                urlImage:
                    'https://rickandmortyapi.com/api/character/avatar/1.jpeg'),
            SizedBox(height: 20),
            SimpleCard2(
                name: 'Morty C137',
                urlImage:
                    'https://rickandmortyapi.com/api/character/avatar/2.jpeg'),
            SizedBox(height: 20),
            SimpleCard2(
                urlImage:
                    'https://rickandmortyapi.com/api/character/avatar/3.jpeg'),
          ],
        )
      ],
    );
  }
}
