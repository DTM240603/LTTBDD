import 'package:flutter/material.dart';
import 'package:flutter_02/HomeScreen.dart';
import 'package:flutter_02/baitap01.dart';
import 'package:flutter_02/examples.dart';
import 'package:flutter_02/examples2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hồ sơ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Text_Field(),
      debugShowCheckedModeBanner: false,
    );
  }
}
