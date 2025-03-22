import 'package:flutter/material.dart';

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({Key? key}) : super(key: key); // ✅ Buenas prácticas

  @override
  _PantallaInicioState createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 227, 205),
      body: Stack(
        children: <Widget>[
          Positioned(
          child: Align(
            alignment: FractionalOffset.bottomRight,
            child: Container(
              padding: EdgeInsets.only(right: 15, left: 5, top: 50, bottom: 50),
               decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 5, 116, 47),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                    ),
                  ),
              child: RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: EdgeInsets.only(top:10),
                  child: Text("El mejor producto Tiens, 100% orgánico y natural.", style: TextStyle(
                          color: const Color.fromARGB(2255, 213, 227, 205),
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          letterSpacing: 5,
                        ),
                    )
                ),
              ),
            ),
          ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/img/tiens-Dora-peru.png",
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:100),
                ),
              const SizedBox(height: 20), // Espacio entre imagen y botón
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(13.0),
                  backgroundColor: const Color.fromARGB(255, 5, 116, 47),
                ),
                onPressed: () {
                  // Acción del botón
                  print('Botón presionado 🛒');
                },
                child: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
