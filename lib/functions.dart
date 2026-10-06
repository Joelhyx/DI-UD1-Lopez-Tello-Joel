class Compra {
  static void comprar() {
    print('El usuario ha comprado Styx Blades of Greed por 39,99 €');
  }
}

class Descripcion{
  static void mostrarDescripcion() {
    print('Explora las vertiginosas alturas del continente Iserian y elimina a tus enemigos con astucia.' 
    'Con tus poderes de cuarzo, eres más libre que nunca.'
    'Deja volar tu imaginación: ¡la codicia nunca fue tan gratificante!');
  }
}

class Descuento {
  static void aplicarDescuento(double precioOriginal) {
    double precioFinal = precioOriginal * 0.8;
    print('Descuento del 20% aplicado. Precio final: ${precioFinal.toStringAsFixed(2)} €');
  }
}