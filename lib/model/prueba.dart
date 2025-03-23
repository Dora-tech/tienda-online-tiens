import 'package:flutter/material.dart';
import 'package:tienda_online_tiens/model/Item.dart';

class PantallaCarta extends StatelessWidget {
  final List<Item> platos;

  const PantallaCarta({super.key, required this.platos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC107),
      appBar: AppBar(
        title: const Text("CARTA"),
        backgroundColor: Color(0xFFFFC107),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: platos.length,
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
                        Image.asset("assets/img/" + platos[index].imagen),
                        Text(
                          platos[index].nombre,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "S/. " + platos[index].precio.toString(),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}