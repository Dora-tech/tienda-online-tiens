import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tienda_online_tiens/carrito/Carrito.dart';
import 'package:url_launcher/url_launcher.dart';

class PantallaCarrito extends StatefulWidget {
  
  @override
  _PantallaCarritoState createState() => _PantallaCarritoState();
}

class _PantallaCarritoState extends State<PantallaCarrito> {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(
      builder: (context, carrito, child) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 213, 227, 205),
          appBar: AppBar(
            title: Text("PEDIDOS"),
            backgroundColor: const Color.fromARGB(2255, 213, 227, 205),
            elevation: 0,
          ),
          body: Container(
            child: carrito.items.length == 0
                ? Center(child: Text("Carrito Vacío"))
                : Column(
                    children: <Widget>[     
                      for (var item in carrito.items.values)
                        Card(
                           margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Image.asset("assets/img/" + item.imagen, width: 100),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 100,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(item.nombre),
                                        Text("S/.${item.precio.toString()} x ${item.unidad}"),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              child: IconButton(
                                                icon: Icon(Icons.remove, size: 13, color: Colors.white),
                                                onPressed: () {
                                                  setState(() {
                                                    carrito.decrementarCantidadItem(item.id);
                                                  });
                                                },
                                              ),
                                              width: 50,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(255, 5, 116, 47),
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                              ),
                                            ),
                                            Container(
                                              width: 20,
                                              child: Center(child: Text(item.cantidad.toString())),
                                            ),
                                            Container(
                                              child: IconButton(
                                                icon: Icon(Icons.add, size: 13, color: Colors.white),
                                                onPressed: () {
                                                  setState(() {
                                                    carrito.incrementarCantidadItem(item.id);
                                                  });
                                                },
                                              ),
                                              width: 50,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(255, 5, 116, 47),
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff0f0f0), // Cambia el color si quieres
                                  ),
                                  child: Center(
                                    child: Text("S/.${(item.precio * item.cantidad).toString()}"),
                                  ),
                                )
                              ],
                            ),
                        ),
                        
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("Subtotal:"),
                              ),
                              Text("S/. " + carrito.subTotal.toStringAsFixed(2)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("Impuesto:"),
                              ),
                              Text("S/. " + carrito.impuesto.toStringAsFixed(2)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("Total:"),
                              ),
                              Text("S/. " + carrito.total.toStringAsFixed(2)),
                            ],
                          ),
                        ),
                    ],
                  ),
          ),

          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              String pedido = "";
              carrito.items.forEach((key, value) {
                pedido = '$pedido' +
                  value.nombre +
                  "\nCANTIDAD: ${value.cantidad}" +
                  "\nPRECIO UNITARIO: ${value.precio}" +
                  "\nPRECIO TOTAL: ${(value.cantidad * value.precio).toStringAsFixed(2)}\n\n";
              // "\n****************************\n";
              });

              pedido += "SUBTOTAL: ${carrito.subTotal.toStringAsFixed(2)}\n";
              pedido += "IMPUESTO: ${carrito.impuesto.toStringAsFixed(2)}\n";
              pedido += "TOTAL: ${carrito.total.toStringAsFixed(2)}\n";

              // Tu número actualizado aquí 
               final Uri url = Uri.parse("https://wa.me/51931850213?text=${Uri.encodeComponent(pedido)}");

            if (!await launchUrl(
              url,
              mode: LaunchMode.externalApplication, //  importante
            )) {
              throw 'No se pudo abrir WhatsApp';
            }
            },
            backgroundColor: const Color.fromARGB(255, 5, 116, 47),
            child: Icon(Icons.send),
          ),

        );
      },
    );
  }
}
