import 'package:flutter/material.dart';

import 'package:components/router/app_routes.dart';
import 'package:components/config/config_index.dart';

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
      // tema oscuro
      darkTheme: AppTheme.darkTheme,
      // tema light
      theme: AppTheme.ligthTheme,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes
          .onGenerateRoute, // constrols a not found route and returns a widget route
    );
  }
}
