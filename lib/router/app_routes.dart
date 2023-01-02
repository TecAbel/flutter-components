import 'package:components/models/route_option.dart';
import 'package:flutter/material.dart';
import 'package:components/screens/screens_index.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': ((context) => const MyHomePage(
          title: 'Home',
        )),
    'listComponents': (BuildContext context) => const ListViewScreen2(),
    'alert': ((context) => const AlertScreen())
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);
    final routeErr = MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
    return routeErr;
  }

  static final menuOptions = <RouteOption>[
    RouteOption(
        path: 'home',
        name: 'Home',
        screen: const MyHomePage(
          title: 'Home',
        ),
        icon: Icons.home),
    RouteOption(
        path: 'listView1',
        name: 'Primera lista',
        screen: const ListViewScreen2(),
        icon: Icons.list_rounded),
    RouteOption(
        path: 'alert',
        name: 'Alerta',
        screen: const AlertScreen(),
        icon: Icons.add_alert_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (final menuop in menuOptions) {
      routes.addAll({menuop.path: (contex) => menuop.screen});
    }

    return routes;
  }
}
