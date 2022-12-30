import 'package:components/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  final optionList = const ['list 2'];
  const ListViewScreen2({super.key});

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
    return Scaffold(
      appBar: MyAppBar(appBar: AppBar(), title: 'List 2'),
      body: ListView.separated(
        itemBuilder: (_, index) => ListTile(
            leading: const Icon(Icons.star),
            title: Text(optionList[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigoAccent,
            ),
            onTap: () {
              print('tab en ${optionList[index]}');
            }),
        separatorBuilder: ((_, __) => const Divider()),
        itemCount: optionList.length,
      ),
    );
  }
}
