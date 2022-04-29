import 'package:flutter/material.dart';

void main() {
  runApp(const MyBank());
}

class MyBank extends StatelessWidget {
  const MyBank({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
