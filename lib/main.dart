import 'package:flutter/material.dart';
import 'package:ticketingbookingapp/screen_page/home_page.dart';
import 'package:ticketingbookingapp/screen_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

