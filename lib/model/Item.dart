class Item {
  final String id;
  final String nombre;
  final double precio;
  final String unidad;
  final String imagen;
  final int cantidad;

  // Constructor con parámetros nombrados y requeridos
  Item({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.unidad,
    required this.imagen,
    required this.cantidad,
  });

  // Constructor alternativo desde un mapa (por ejemplo: JSON)
  Item.fromMap(Map<String, dynamic> o)
      : id = o["id"],
        nombre = o["nombre"],
        precio = o["precio"],
        unidad = o["unidad"],
        imagen = o["imagen"],
        cantidad = o["cantidad"];

  // Convertir a mapa para guardar en base de datos o enviar como JSON
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nombre": nombre,
      "precio": precio,
      "unidad": unidad,
      "imagen": imagen,
      "cantidad": cantidad,
    };
  }

  Map<String, dynamic> toJson() {
    return toMap(); // reutiliza el mismo método
  }
}
