import 'package:flutter/material.dart';
import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Styx Game Card',
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: const Color(0xFF020617),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0F172A),
          centerTitle: true,
        ),
        body: const SingleChildScrollView(
          child: TarjetaVideojuegoAndroid(),
        ),
      ),
    );
  }
}