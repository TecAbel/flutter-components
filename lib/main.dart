import 'package:flutter/material.dart';

import 'package:components/screens/screens_index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Components',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'home': ((context) => const MyHomePage(
              title: 'Home',
            )),
        'listComponents': (BuildContext context) => const ListViewScreen2(),
        'alert': ((context) => const AlertScreen())
      },
      onGenerateRoute: ((settings) {
        print(settings);
        final routeErr = MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
        return routeErr;
      }), // constrols a not found route and returns a widget route
    );
  }
}
