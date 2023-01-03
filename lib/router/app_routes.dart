import 'package:components/models/route_option.dart';
import 'package:flutter/material.dart';
import 'package:components/screens/screens_index.dart';

class AppRoutes {
  static const initialRoute = 'home';

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': ((context) => const MyHomePage(
          title: 'Home',
        )),
    'listComponents': (BuildContext context) => const ListViewScreen2(),
    'alert': ((context) => const AlertScreen())
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
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
        child: ListViewScreen(),
      ),
      icon: Icons.home,
    ),
    RouteOption(
      path: 'listView1',
      name: 'Primera lista',
      screen: const MyHomePage(
        title: 'List View 2',
        child: ListViewScreen2(),
      ),
      icon: Icons.list_rounded,
    ),
    RouteOption(
      path: 'alert',
      name: 'Alerta',
      screen: const MyHomePage(
        title: 'Alerta!',
        child: AlertScreen(),
      ),
      icon: Icons.add_alert_outlined,
    ),
    RouteOption(
      path: 'card',
      name: 'Card Widget',
      screen: const MyHomePage(
        title: 'Alerta!',
        child: CardScreen(),
      ),
      icon: Icons.credit_card,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (final menuop in menuOptions) {
      routes.addAll({menuop.path: (contex) => menuop.screen});
    }

    return routes;
  }
}
