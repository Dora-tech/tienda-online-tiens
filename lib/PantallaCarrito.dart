import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'Carrito.dart';
import 'package:tienda_online_tiens/carrito/Carrito.dart';

class PantallaCarrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carrito = Provider.of<Carrito>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Carrito"),
        backgroundColor: const Color.fromARGB(255, 5, 116, 47),
      ),
      body: carrito.items.isEmpty
          ? Center(child: Text("Tu carrito está vacío"))
          : ListView.builder(
              itemCount: carrito.items.length,
              itemBuilder: (context, index) {
                final item = carrito.items.values.toList()[index];
                return ListTile(
                  leading: Image.asset("assets/img/${item.imagen}", width: 40),
                  title: Text(item.nombre),
                  subtitle: Text("S/. ${item.precio} x ${item.cantidad}"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      carrito.removerItem(item.id);
                    },
                  ),
                );
              },
            ),
    );
  }
}