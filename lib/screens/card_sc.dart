import 'package:components/config/config_index.dart';
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
            Card(
              child: ListTile(
                title: Text('Abel'),
                subtitle: Text('Stefanini'),
                leading: Icon(
                  Icons.phone,
                  color: AppTheme.primaryColor,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
