import 'package:flutter/material.dart';
import 'package:tienda_online_tiens/model/Carta.dart' show suplementoNutricional, belleza, cuidadoPersonal;
import 'package:tienda_online_tiens/pantallaInicio.dart';


class PantallaCarta extends StatefulWidget {
  @override
  _PantallaCartaState createState() => _PantallaCartaState();
}

class _PantallaCartaState extends State<PantallaCarta> {
   @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // número de pestañas
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 213, 227, 205),
        appBar: AppBar(
          title: Text("CARTA"),
          backgroundColor: const Color.fromARGB(255, 213, 227, 205),
          elevation: 0,
          bottom: TabBar(
             labelColor: const Color.fromARGB(255, 5, 116, 47),
              indicatorColor: const Color.fromARGB(255, 5, 116, 47),
              indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              new Tab(
                child: Padding(
                  padding: EdgeInsets.only(left: 1, right: 0),
                  child: Text("SUPLEMENTO NUTRICIONAL",textAlign: TextAlign.center, softWrap: true, maxLines: 2,),
                ),
              ),
              new Tab(
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text("BELLEZA",textAlign: TextAlign.center,),
                ),
              ),
              new Tab(
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text("CUIDADO PERSONAL",textAlign: TextAlign.center,),
                ),
              ),
            ]
          )
        ),
        drawer: menuLateral(),
        body: TabBarView(
          children: <Widget>[
            Container( 
             padding: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: suplementoNutricional.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.5),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x6600005C),
                          blurRadius: 30,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/img/" + suplementoNutricional[index].imagen),
                        Text(
                          suplementoNutricional[index].nombre,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "S/. " + suplementoNutricional[index].precio.toString(),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            
            // BELLEZA
            Container(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: belleza.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.5),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x6600005C),
                          blurRadius: 30,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/img/" + belleza[index].imagen),
                        Text(
                          belleza[index].nombre,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "S/. " + belleza[index].precio.toString(),
                            style: const TextStyle(fontSize: 16),
                           ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // CUIDADO PERSONAL
            Container(
                padding: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cuidadoPersonal.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.5),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x6600005C),
                          blurRadius: 30,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/img/" + cuidadoPersonal[index].imagen),
                        Text(
                          cuidadoPersonal[index].nombre,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                           "S/. " + cuidadoPersonal[index].precio.toString(),
                            style: const TextStyle(fontSize: 16),
                           ),
                        ),
                      ],
                    ),
                  );
                },
              ),

            )
    
          ],
        ),
      ),
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