import 'package:samparka/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:samparka/widgets/appbar.dart';
import 'package:samparka/main.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    IconData ico = themeGlobalKey.currentState!.ico;
    return Scaffold(
      appBar: MyAppBar(ico, "Notes"),
      drawer: MyDrawer(),
      body: Center(child: Text('Notes')),
    );
  }
}
