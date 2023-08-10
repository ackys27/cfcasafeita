import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../variaveis/inicial.dart';

//TELA DE EVOLUÇÃO MENSAL
class evolucao extends StatefulWidget {
  const evolucao({Key? key}) : super(key: key);

  @override
  State<evolucao> createState() => _evolucaoState();
}

class _evolucaoState extends State<evolucao> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Column(children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Evolução Mensal",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.yellow[900],
                      fontFamily: "Pacifico-Regular",
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: Colors.black12,
                ),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                child: Text(
              "Janeiro",
              style: TextStyle(color: Colors.black, fontSize: 19),
            )),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: evomensal_previstojan / 100,
                      animation: true,
                      center: Text("$evomensal_previstojan%"),
                      animationDuration: 1500,
                      leading: Text(
                        "Previsto:  ",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.blue),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: reamensal_previstojan / 100,
                      animation: true,
                      center: Text("$reamensal_previstojan%"),
                      animationDuration: 1500,
                      leading: Text(
                        "Realizado:",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.redAccent),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Text(
              "Fevereiro",
              style: TextStyle(color: Colors.black, fontSize: 19),
            )),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: evomensal_previstofev / 100,
                      animation: true,
                      center: Text("$evomensal_previstofev%"),
                      animationDuration: 1500,
                      leading: Text(
                        "Previsto:  ",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.blue),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: reamensal_previstofev / 100,
                      animation: true,
                      center: Text("$reamensal_previstofev%"),
                      animationDuration: 1500,
                      leading: Text(
                        "Realizado:",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.redAccent),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Text(
              "Março",
              style: TextStyle(color: Colors.black, fontSize: 19),
            )),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: evomensal_previstomar / 100,
                      animation: true,
                      center: Text("$evomensal_previstomar%"),
                      animationDuration: 1500,
                      leading: Text(
                        "Previsto:  ",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.blue),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: reamensal_previstomar / 100,
                      animation: true,
                      center: Text("$reamensal_previstomar%"),
                      animationDuration: 1500,
                      leading: Text(
                        "Realizado:",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.redAccent),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(
                  "Como avançam os serviços",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.yellow[900],
                      fontFamily: "Pacifico-Regular",
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.black12),
              )),
            ),
            SizedBox(
              height: 40,
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //        Padding(
            //          padding: const EdgeInsets.only(right: 40),
            //          child: Text("Etapa",
            //            style: TextStyle(
            //              fontSize: 25,
            //              color: Colors.black,
            //              fontWeight: FontWeight.bold
            //            ),
            //          ),
            //        ),
            //         Padding(
            //         padding: const EdgeInsets.only(right: 58),
            //           child: Text("%",
            //             style: TextStyle(
            //               fontSize: 25,
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold
            //             ),),
            //         )
            //   ],
            // ),
            //Fundação
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.horizontal_split, ),
                Container(
                  padding: EdgeInsets.only(right: 180),
                  child: Text(
                    "Fundação",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                    child: Text(
                  "$evofundacao%",
                  style: TextStyle(fontSize: 20),
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 280.0,
                      lineHeight: 15,
                      percent: evofundacao / 100,
                      animation: true,
                      animationDuration: 1500,
                      barRadius: Radius.circular(5),
                      progressColor: Colors.red,
                ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),


            //Estrutura
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.corporate_fare, ),
                Container(
                  padding: EdgeInsets.only(right: 180),
                  child: Text(
                    "Estrutura",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                    child: Text(
                      "$evoestrutura%",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 280.0,
                      lineHeight: 15,
                      percent: evoestrutura/ 100,
                      animation: true,
                      animationDuration: 1500,
                      barRadius: Radius.circular(5),
                      progressColor: Colors.yellow),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),

            //Alvenaria
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.rounded_corner ),
                Container(
                  padding: EdgeInsets.only(right: 180),
                  child: Text(
                    "Alvenaria",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                    child: Text(
                      "$evoalvenaria%",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 280.0,
                      lineHeight: 15,
                      percent: evoalvenaria/ 100,
                      animation: true,
                      animationDuration: 1500,
                      barRadius: Radius.circular(5),
                      progressColor: Colors.green),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),


          //INSTALAÇÃO
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.construction ),
                Container(
                  padding: EdgeInsets.only(right: 160),
                  child: Text(
                    "Instalações",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                    child: Text(
                      "$evoinstalacoes%",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 280.0,
                      lineHeight: 15,
                      percent: evoinstalacoes/ 100,
                      animation: true,
                      animationDuration: 1500,
                      barRadius: Radius.circular(5),
                      progressColor: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),

            //ACABAMENTO
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.view_comfy ),
                Container(
                  padding: EdgeInsets.only(right: 160),
                  child: Text(
                    "Acabamento",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                    child: Text(
                      "$evoacabamendo%",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 280.0,
                      lineHeight: 15,
                      percent: evoacabamendo/ 100,
                      animation: true,
                      animationDuration: 1500,
                      barRadius: Radius.circular(5),
                      progressColor: Colors.orange),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),


          ]),
        ]),
      ),
    );
  }
}
