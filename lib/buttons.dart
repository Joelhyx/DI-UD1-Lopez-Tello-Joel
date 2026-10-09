import 'package:flutter/material.dart';
import 'functions.dart';

class BotonComprar extends StatelessWidget {
  const BotonComprar({super.key});
//Es el boton de comprar, es un ElevatedButton con estilo personalizado y un texto.
//Al pulsar el boton se ejecuta la funcion comprar() de la clase Compra en functions.dart
//Gracias al onPressed, que permite ejecutar una funcion al pulsar el boton.
//Se llama sin parentesis por que es una referencia a la funcion y no una llamada.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: Compra.comprar,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyanAccent,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          'Comprar por 39,99 €',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
    );
  }
}