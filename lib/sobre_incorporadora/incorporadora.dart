import 'package:flutter/material.dart';


//TELA DA INCORPORADORA
class incorporadora extends StatefulWidget {
  const incorporadora({Key? key}) : super(key: key);

  @override
  State<incorporadora> createState() => _incorporadoraState();
}

class _incorporadoraState extends State<incorporadora> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              child: const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Residencial - ABC",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontFamily: "Pacifico-Regular",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.black12),
              )),
            ),
            SizedBox(
              height: 15,
            ),
            Image(
              width: 200.0,
              height: 280.0,
              image: AssetImage(
                "image/oi.webp",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contrato",
                    style: TextStyle(
                      color: Colors.yellow[900],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text("00004123-1", style: TextStyle(color: Colors.black))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Empreendimento",
                    style: TextStyle(
                      color: Colors.yellow[900],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Residencial -ABC",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Incorporadora / Grupo",
                    style: TextStyle(
                      color: Colors.yellow[900],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "ABC Incorporadora Imobiliaria SPE Ltda",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cliente",
                    style: TextStyle(
                      color: Colors.yellow[900],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text("Maria Oliveira Souto",
                      style: TextStyle(color: Colors.black))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bloco/Unidade",
                    style: TextStyle(
                      color: Colors.yellow[900],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text("2/132", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Financiador Responsável",
                    style: TextStyle(
                      color: Colors.yellow[900],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text("Banco X", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
