import 'package:flutter/material.dart';

class PantallaInicio extends StatefulWidget {
  @override
  _PantallaInicioState createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Tienda Online Tiens 🛍️'),
    ),
    body: Center(
      child: Text('Bienvenido a Tiens', style: TextStyle(fontSize: 24)),
    ),
  );
}
}