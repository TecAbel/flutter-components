import 'package:flutter/material.dart';

class RouteOption {
  final String path;
  final String name;
  final Widget screen;
  final IconData icon;

  RouteOption({
    required this.path,
    required this.name,
    required this.screen,
    required this.icon,
  });
}
