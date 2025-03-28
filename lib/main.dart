import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tienda_online_tiens/carrito/Carrito.dart';
import 'package:tienda_online_tiens/pantallaInicio.dart';

void main() => runApp(
    ChangeNotifierProvider(
    create: (context) => Carrito(),
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda Online Tiens 🛒',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PantallaInicio(),
    );
  }
}

