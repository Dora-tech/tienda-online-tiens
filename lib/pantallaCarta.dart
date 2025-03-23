import 'package:flutter/material.dart';
import 'pantallaInicio.dart';

class PantallaCarta extends StatefulWidget {
  @override
  _PantallaCartaState createState() => _PantallaCartaState();
}

class _PantallaCartaState extends State<PantallaCarta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CARTA"),
      ),
      drawer: menuLateral(),
      body:Container(),
    );
  }
}
class menuLateral extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Tienda Online TIENS"),
            accountEmail: Text(""),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 5, 116, 47)
            ),
          ),
            // Botón INICIO
          InkWell(
            child: ListTile(
              title: Text("INICIO",
                  style: TextStyle(color: const Color.fromARGB(255, 5, 116, 47))),
              leading: Icon(Icons.home, color: const Color.fromARGB(255, 5, 116, 47)),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext) => PantallaInicio(),
                ),
              );
            },
          ),

          // Botón CARRITO
          InkWell(
            child: ListTile(
              title: Text("CARRITO",
                  style: TextStyle(color: const Color.fromARGB(255, 5, 116, 47))),
              leading: Icon(Icons.add_shopping_cart, color: const Color.fromARGB(255, 5, 116, 47)),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext) => PantallaInicio(),
                ),
              );
            },
          ),

          // Botón RESTAURANT
          InkWell(
            child: ListTile(
              title: Text("RESTAURANT",
                  style: TextStyle(color: const Color.fromARGB(2255, 5, 116, 47))),
              leading: Icon(Icons.account_box, color: const Color.fromARGB(255, 5, 116, 47)),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext) => PantallaInicio(),
                ),
              );
            },
          ),

          // Botón CARTA
          InkWell(
            child: ListTile(
              title: Text("CARTA",
                  style: TextStyle(color: const Color.fromARGB(255, 5, 116, 47))),
              leading: Icon(Icons.airplay, color: const Color.fromARGB(255, 5, 116, 47)),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext) => PantallaCarta(),
                ),
              );
            },
          ),

        ],
      )
    );
  }
}