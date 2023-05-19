import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samparka/widgets/appbar.dart';
import 'package:samparka/main.dart';

class Same extends StatelessWidget {
  const Same({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData ico = themeGlobalKey.currentState!.ico;

    return Scaffold(
      appBar: MyAppBar(ico, "landing page"),
      body: Center(
        child: Text(
          'Same redirected page for alumni and students',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue, // Set the text color
          ),
        ),
      ),
    );
  }
}
