import 'package:flutter/material.dart';
import 'widgets.dart';

//Aqui se empieza a ejecutar la app Flutter
//runApp() conecta MyApp con la pantalla.
void main() {
  runApp(const MyApp());
}

//Clase principal de la app Flutter
//Configura la apariencia y define la pantalla principal con un Scaffold que contiene la tarjeta de videojuego.
//El SingleChildScrollView (Recomendado por la ia) permite scrollear verticalmente si el contenido no cabe.
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