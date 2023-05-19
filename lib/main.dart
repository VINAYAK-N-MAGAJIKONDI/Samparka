import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samparka/pages/home.dart';

void main() {
  runApp(MyApp(
    key: themeGlobalKey,
  ));
}

final themeGlobalKey = GlobalKey<_MyAppState>();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = true;

  IconData get ico =>
      isDarkTheme ? CupertinoIcons.lightbulb : CupertinoIcons.lightbulb_fill;

  ThemeData get theme => isDarkTheme ? ThemeData.dark() : ThemeData.light();

  @override
  Widget build(BuildContext context) {
    Color primaryColor =
        const Color(0xFF9DCC68); // Change the primary color here

    ColorScheme colorScheme = theme.colorScheme.copyWith(
      primary: primaryColor,
      secondary: const Color(0xFFFF6E40),
    );
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: colorScheme,
        splashColor: Colors.white,
        scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white,
        textTheme: theme.textTheme.copyWith(
          bodyText1:
              TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          // Add or modify other text styles as needed
        ),

        // Add or modify other properties as needed
      ),
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(),
    );
  }

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }
}
