import 'package:flutter/material.dart';
import 'package:praktikum_mobile/list_page.dart';
import 'package:praktikum_mobile/login_page.dart';

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
      initialRoute: '/',
      routes: {
        '/list': (context) => ListPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

