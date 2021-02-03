import 'package:final_project_chat_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger App',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.indigo,
      ),
      home: ChatAppMain(),
    );
  }
}
