import 'package:flutter/material.dart';
import 'package:praktikum_mobile/login_page.dart';
import 'package:praktikum_mobile/container_page.dart';
import 'package:praktikum_mobile/segitasiku_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
