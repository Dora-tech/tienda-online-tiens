class Carta {
  final int id;
  final String nombre;
  final double precio;
  final String imagen;
  final String descripcion;

  const Carta({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.imagen,
    required this.descripcion,
  });
}

// Suplementos Nutricionales
final suplementoNutricional = [
  Carta(
    id: 1,
    nombre: "Spirulina Premium",
    precio: 49.90,
    imagen: "espirulina-1.jpg",
    descripcion: "Fuente natural de proteínas, vitaminas y minerales.",
  ),
  Carta(
    id: 2,
    nombre: "CordyCafe 3 en 1",
    precio: 39.90,
    imagen: "cordycafe.jpg",
    descripcion: "Café saludable con extracto de cordyceps y ginseng.",
  ),
  Carta(
    id: 3,
    nombre: "Calcio Plus",
    precio: 29.90,
    imagen: "viokal.jpg",
    descripcion: "Suplemento de calcio con vitamina D para huesos fuertes.",
  ),
  Carta(
    id: 4,
    nombre: "Tianshi Zinc",
    precio: 35.50,
    imagen: "te_tianshi.jpg",
    descripcion: "Apoya el sistema inmune y mejora el metabolismo.",
  ),
];

// Belleza
final belleza = [
  Carta(
    id: 5,
    nombre: "Mascarilla Facial Rev",
    precio: 24.50,
    imagen: "limpiador-facial.jpeg",
    descripcion: "Limpia profundamente y da brillo natural a la piel.",
  ),
  Carta(
    id: 6,
    nombre: "Crema Blanqueadora",
    precio: 29.90,
    imagen: "all_in_cream.jpeg",
    descripcion: "Aclara la piel con extractos naturales sin irritaciones.",
  ),
  Carta(
    id: 7,
    nombre: "Loción Tonificante",
    precio: 22.00,
    imagen: "petal_lotion.jpeg",
    descripcion: "Hidrata y revitaliza la piel con pétalos florales.",
  ),
  Carta(
    id: 8,
    nombre: "Serum de Belleza",
    precio: 59.00,
    imagen: "facial_essence.jpeg",
    descripcion: "Aporta firmeza y elasticidad a la piel madura.",
  ),
];

// Cuidado Personal
final cuidadoPersonal = [
  Carta(
    id: 9,
    nombre: "Crema Dental Herbal",
    precio: 15.90,
    imagen: "orecare.jpg",
    descripcion: "Protección total con hierbas naturales.",
  ),
  Carta(
    id: 10,
    nombre: "capilar",
    precio: 28.90,
    imagen: "capilar-masajeador.png",
    descripcion: "masajeador.",
  ),
  Carta(
    id: 11,
    nombre: "Masajeador circulacion",
    precio: 12.90,
    imagen: "Masajeador-de-circulacion-sanguinea.jpeg",
    descripcion: "Masajeador de circulacion sanguinea.",
  ),
  Carta(
    id: 12,
    nombre: "Toallas Húmedas",
    precio: 8.90,
    imagen: "toallas-airiz.png",
    descripcion: "Frescura al instante con aroma suave y natural.",
  ),
];