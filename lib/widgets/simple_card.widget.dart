import 'package:components/config/config_index.dart';
import 'package:flutter/material.dart';

class SimpleCardWidget extends StatelessWidget {
  const SimpleCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          const ListTile(
            title: Text('Abel'),
            subtitle: Text('Stefanini'),
            leading: Icon(
              Icons.phone,
              color: AppTheme.primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
