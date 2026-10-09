import 'package:flutter/material.dart';
import 'buttons.dart';
import 'functions.dart';

class TarjetaVideojuegoAndroid extends StatelessWidget {
  const TarjetaVideojuegoAndroid({super.key});
//Creación y organizacion de la tarjeta en sí, no crea nada, solo organiza los widgets con un column.
//Estos están dentro de un Container que tiene un borde cian y esquinas redondeadas.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 340,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFF0F172A),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: Colors.cyanAccent, width: 2.0),
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PortadaJuego(),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EtiquetaGenero(),
                  SizedBox(height: 10),
                  TituloYDescripcion(),
                  SizedBox(height: 14),
                  ValoracionJuego(),
                  SizedBox(height: 12),
                  PrecioJuego(),
                  SizedBox(height: 12),
                  PlataformasDisponibles(),
                  SizedBox(height: 16),
                  BotonComprar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PortadaJuego extends StatelessWidget {
  const PortadaJuego({super.key});
//Es la imagen de portada del juego, ClippRRect redondea las esquinas superiores para que cuadre con la tarjeta.
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(14.0)),
      child: Image.asset(
        'assets/styx.png',
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class EtiquetaGenero extends StatelessWidget {
  const EtiquetaGenero({super.key});
//Es un Container con fondo, borde y esquinas redondeadas que devuelve el texto del genero.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.cyanAccent),
      ),
      child: const Text(
        'Acción / Sigilo',
        style: TextStyle(
          color: Colors.cyanAccent,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class TituloYDescripcion extends StatelessWidget {
  const TituloYDescripcion({super.key});
//es un Colum que organiza el titulo y la descripcion del juego
//El gestureDetector permite que al pulsar la descripcion, se muestre por consola la descripcion larga.
//Con la funcion mostrarDescripcion() de la clase Descripcion en functions.dart
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'STYX: BLADES OF GREED',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: Descripcion.mostrarDescripcion,
          child: const Text(
            '¡El maestro del sigilo ha vuelto!',
            style: TextStyle(
              fontSize: 13,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

class ValoracionJuego extends StatelessWidget {
  const ValoracionJuego({super.key});
//Es un Container que contiene un Row con el texto de la valoracion y las estrellas.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Valoración (3.0):',
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star_border, color: Colors.grey, size: 18),
              Icon(Icons.star_border, color: Colors.grey, size: 18),
            ],
          ),
        ],
      ),
    );
  }
}

class PrecioJuego extends StatelessWidget {
  const PrecioJuego({super.key});
//Es un Row que contiene el texto del precio y un icono de descuento.
//Al pulsar el icono se ejecuta la funcion aplicarDescuento() de la clase Descuento en functions.dart
//Gracias al IconButton, que permite ejecutar una funcion al pulsar el icono.
//Se usa () => Descuento.aplicarDescuento(39.99) para pasar el precio original como argumento.
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Precio:',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        Row(
          children: [
            const Text(
              '39,99 €',
              style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.local_offer, color: Colors.cyanAccent),
              tooltip: 'Aplicar descuento',
              onPressed: () => Descuento.aplicarDescuento(39.99),
            ),
          ],
        ),
      ],
    );
  }
}

class PlataformasDisponibles extends StatelessWidget {
  const PlataformasDisponibles({super.key});
//Muestra las plataformas disponibles para el juego en un Row con iconos de cada plataforma y un texto.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Disponible:',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Row(
            children: [
              Image.asset('assets/play.png', width: 18, height: 18),
              const SizedBox(width: 8),
              Image.asset('assets/xbox.png', width: 18, height: 18),
              const SizedBox(width: 8),
              Image.asset('assets/win.png', width: 18, height: 18),
            ],
          ),
        ],
      ),
    );
  }
}