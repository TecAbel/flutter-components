import 'package:components/router/app_routes.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  // final optionList = const ['Luke', 'Leya', 'Anakin', 'Obi Wan'];
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
        // leading: const Icon(Icons.star),
        title: Text(AppRoutes.menuOptions[index].name),
        leading: Icon(
          AppRoutes.menuOptions[index].icon,
          color: Colors.indigoAccent,
        ),
        onTap: () {
          /* final routeSelected =
              MaterialPageRoute(builder: (context) => const ListViewScreen2());
          Navigator.push(context, routeSelected); */
          Navigator.pushNamed(context, AppRoutes.menuOptions[index].path);
        },
      ),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: AppRoutes.menuOptions.length,
    );
  }
}
