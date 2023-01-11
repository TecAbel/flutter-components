import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: const Text('Esto es una alerta'),
        icon: const Icon(
          Icons.warning,
          color: Colors.red,
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Este es el contenido de la alerta'),
            const SizedBox(
              height: 20,
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar'),
                )
              ],
            )
          ],
        ),
      ),
      barrierDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showAlertDialog(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text('Mostar alerta'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
