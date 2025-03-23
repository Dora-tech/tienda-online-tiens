import 'package:flutter/material.dart';
import 'package:tienda_online_tiens/model/Item.dart';

class Carrito extends ChangeNotifier {
  Map<String, Item> _items = {};

  Map<String, Item> get items {
    return {..._items}; // Devuelve una copia para evitar modificación directa
  }

  int get numeroItems {
    return _items.length;
  }

  double get subTotal {
    var total = 0.0;
    _items.forEach((key, item) {
      total += item.precio * item.cantidad;
    });
    return total;
  }

  double get impuesto {
    return subTotal * 0.18;
  }

  double get total {
    return subTotal * 1.18;
  }

  void agregarItem(
    String productoId,
    String nombre,
    double precio,
    String unidad,
    String imagen,
    int cantidad,
  ) {
    if (_items.containsKey(productoId)) {
      _items.update(
        productoId,
        (old) => Item(
          id: old.id,
          nombre: old.nombre,
          precio: old.precio,
          unidad: old.unidad,
          imagen: old.imagen,
          cantidad: old.cantidad + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        productoId,
        () => Item(
          id: productoId,
          nombre: nombre,
          precio: precio,
          unidad: unidad,
          imagen: imagen,
          cantidad: 1,
        ),
      );
    }
    notifyListeners();
  }

  void removerItem(String productoId) {
    _items.remove(productoId);
    notifyListeners();
  }

  void incrementarCantidadItem(String productoId) {
    if (_items.containsKey(productoId)) {
      _items.update(
        productoId,
        (old) => Item(
          id: old.id,
          nombre: old.nombre,
          precio: old.precio,
          unidad: old.unidad,
          imagen: old.imagen,
          cantidad: old.cantidad + 1,
        ),
      );
      notifyListeners();
    }
  }

  void decrementarCantidadItem(String productoId) {
    if (!_items.containsKey(productoId)) return;

    if (_items[productoId]!.cantidad > 1) {
      _items.update(
        productoId,
        (old) => Item(
          id: old.id,
          nombre: old.nombre,
          precio: old.precio,
          unidad: old.unidad,
          imagen: old.imagen,
          cantidad: old.cantidad - 1,
        ),
      );
    } else {
      _items.remove(productoId);
    }
    notifyListeners();
  }

  void limpiarCarrito() {
    _items = {};
    notifyListeners();
  }
}

