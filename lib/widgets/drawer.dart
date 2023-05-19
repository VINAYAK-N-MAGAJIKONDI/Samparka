import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samparka/main.dart';
import 'package:samparka/pages/home.dart';
import 'package:samparka/pages/notifications.dart';
import 'package:samparka/pages/notes.dart';
import '../styles/textStyles.dart';

// ignore: must_be_immutable
class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {


  @override

  Widget build(BuildContext context) {
    ThemeData theme = themeGlobalKey.currentState!.theme;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: DrawerHeader(
                  padding: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      color: theme == ThemeData.dark()
                          ? Colors.black
                          : Color(0xFF9DCC68)),
                  child: Column(
                    children: [
                      Icon(
                        CupertinoIcons.book_solid,
                        size: MediaQuery.of(context).size.height / 13,
                        color: Colors.white,
                      ),
                      Text(
                        "Samparka",
                        style: Font.drawerHeading,
                        textScaleFactor: 2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ))),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              splashColor: Colors.purpleAccent,
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
          ListTile(
              leading: Icon(Icons.notes),
              title: Text('Add Notes'),
              splashColor: Colors.purpleAccent,
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Notes()));
              }),
          ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('Notifications'),
              splashColor: Colors.purpleAccent,
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Notifications()));
              }),
          ListTile(
              leading: Icon(Icons.local_activity),
              title: Text('Activities'),
              splashColor: Colors.purpleAccent,
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) =>
                        Notifications())); //for now its directed to notifications
              }),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Label',
            ),
          ),
          ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Item A'),
              splashColor: Colors.purpleAccent,
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) =>
                        Notifications())); //for now its directed to notifications
              }),
        ],
      ),
    );
  }
}
