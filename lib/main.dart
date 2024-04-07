
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:myapp_project/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Project 640710553',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(201, 4, 3, 8)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      // home:  ShowAPI(), 
      // home: Movies(),
    );
  }
}

