import 'package:samparka/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:samparka/widgets/appbar.dart';
import 'package:samparka/main.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    IconData ico = themeGlobalKey.currentState!.ico;
    return Scaffold(
      appBar: MyAppBar(ico, "Notifications"),
      drawer: MyDrawer(),
      body: Center(child: Text('notification')),
    );
  }
}
