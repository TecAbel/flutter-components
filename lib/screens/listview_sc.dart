import 'package:components/screens/screens_index.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final optionList = const ['Luke', 'Leya', 'Anakin', 'Obi Wan'];
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /* return ListView(
      children: [
        ...optionList
            .map(
              (opt) => ListTile(
                leading: const Icon(Icons.star),
                title: Text(opt),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            )
            .toList()
        // ListTile(
        //   title: Text('Hola Mundo'),
        // )
      ],
    ); */
    return ListView.separated(
      itemBuilder: (_, index) => ListTile(
        leading: const Icon(Icons.star),
        title: Text(optionList[index]),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.indigoAccent,
        ),
        onTap: () {
          /* final routeSelected =
              MaterialPageRoute(builder: (context) => const ListViewScreen2());
          Navigator.push(context, routeSelected); */
          Navigator.pushNamed(context, 'cart');
        },
      ),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: optionList.length,
    );
  }
}
