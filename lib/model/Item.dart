class Item {
  String id = ""; // Inicializado para evitar error
  String nombre = "";
  double precio = 0.0;
  String unidad = "";
  String imagen = "";
  int cantidad = 0; // Valor por defecto

  Item(this.id, this.nombre, this.precio, this.unidad, this.imagen, this.cantidad);

  Item.map(dynamic o) {
    id = o["id"] ?? "";
    nombre = o["nombre"] ?? "";
    precio = o["precio"] ?? 0.0;
    unidad = o["unidad"] ?? "";
    imagen = o["imagen"] ?? "";
    cantidad = o["cantidad"] ?? 0;
  }

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
    return {
      "id": id,
      "nombre": nombre,
      "precio": precio,
      "unidad": unidad,
      "imagen": imagen,
      "cantidad": cantidad,
    };
  }
}