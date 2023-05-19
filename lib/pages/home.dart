import 'package:flutter/material.dart';
import 'package:samparka/main.dart';
import 'package:samparka/widgets/drawer.dart';
import 'package:samparka/pages/page.dart';

import '../widgets/appbar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    IconData ico = themeGlobalKey.currentState!.ico;
    return Scaffold(
      appBar: MyAppBar(ico, "Home"),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Same()),
                );
              },
              child: Card(
                color: Colors.purpleAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'students',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Same()),
                );
              },
              child: Card(
                color: Colors.purpleAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'alumni',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
