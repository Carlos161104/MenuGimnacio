import 'package:flutter/material.dart';
import 'package:parcial_uno/pages/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Diseño bascio',
      

      initialRoute: 'diseno_basico',

      routes: {'diseno_basico': (BuildContext context) => const Principal()},
    );
  }
}
