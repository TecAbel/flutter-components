import 'package:components/screens/screens_index.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: widget.title,
        appBar: AppBar(),
      ),
      body: const Center(
        child: ListViewScreen(),
      ),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.appBar, required this.title});

  final String title;
  final AppBar appBar;

  @override
  State<MyAppBar> createState() => _MyAppBar();

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}

class _MyAppBar extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor: Colors.indigo,
      title: Text(widget.title),
    );
  }
}
