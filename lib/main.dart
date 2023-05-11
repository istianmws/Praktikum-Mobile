import 'package:flutter/material.dart';
import 'package:praktikum_mobile/list_page.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uts Mobile',
      initialRoute: '/',
      routes: {
        '/home': (context) => const ListPage(),
        '/logout': (context) => const LoginPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
