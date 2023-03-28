import 'package:flutter/material.dart';
import 'package:flutter_app/screens/chat_screen.dart';

import 'constants/constnats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatGPT',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: cardColor,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const ChatScreen(),
    );
  }
}
