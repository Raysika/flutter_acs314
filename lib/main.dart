import 'package:flutter/material.dart';

import 'package:test_drive/views/login.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(), // Start with the Login screen
      debugShowCheckedModeBanner: false,
    );
  }
}
