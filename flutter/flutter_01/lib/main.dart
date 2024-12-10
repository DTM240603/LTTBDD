import 'package:flutter/material.dart';
import 'package:flutter_01/fluttter_01.dart';
import 'package:flutter_01/fluttter_02.dart';
import 'package:flutter_01/fluttter_03.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: TemperatureConverter(),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 205, 95, 141)),
        useMaterial3: true,
      ),
      home: ScaffoldExample(),
    );
  }
}
