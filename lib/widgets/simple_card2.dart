import 'package:components/config/config_index.dart';
import 'package:flutter/material.dart';

class SimpleCard2 extends StatelessWidget {
  final String urlImage;
  final String? name;

  const SimpleCard2({super.key, required this.urlImage, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: AppTheme.primaryColor.withOpacity(0.7),
      clipBehavior: Clip.antiAlias, // corta los hijos que se desborden
      elevation: 15,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(urlImage),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: Text(name ?? 'Nombre'),
            ),
        ],
      ),
    );
  }
}
