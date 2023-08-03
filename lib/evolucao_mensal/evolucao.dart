import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


//TELA DE EVOLUÇÃO MENSAL
class evolucao extends StatefulWidget {
  const evolucao({Key? key}) : super(key: key);

  @override
  State<evolucao> createState() => _evolucaoState();
}
final teste = 50;

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
              style: TextStyle(color: Colors.black,fontSize: 19),
            )),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: teste / 100,
                      animation: true,
                      center: Text(teste.toString()),
                      animationDuration: 1500,
                      leading: Text("Previsto:  ",style: TextStyle(fontSize: 16, color: Colors.black),),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.blue),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: 45 / 100,
                      animation: true,
                      center: Text("45%"),
                      animationDuration: 1500,
                      leading: Text("Realizado:",style: TextStyle(fontSize: 16, color: Colors.black),),
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
                  style: TextStyle(color: Colors.black,fontSize: 19),
                )),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: 67 / 100,
                      animation: true,
                      center: Text("67%"),
                      animationDuration: 1500,
                      leading: Text("Previsto:  ",style: TextStyle(fontSize: 16, color: Colors.black),),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.blue),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: 54 / 100,
                      animation: true,
                      center: Text("54%"),
                      animationDuration: 1500,
                      leading: Text("Realizado:",style: TextStyle(fontSize: 16, color: Colors.black),),
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
                  style: TextStyle(color: Colors.black,fontSize: 19),
                )),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: 72 / 100,
                      animation: true,
                      center: Text("72%"),
                      animationDuration: 1500,
                      leading: Text("Previsto:  ",style: TextStyle(fontSize: 16, color: Colors.black),),
                      barRadius: Radius.circular(5),
                      progressColor: Colors.blue),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 180.0,
                      lineHeight: 15,
                      percent: 67 / 100,
                      animation: true,
                      center: Text("67%"),
                      animationDuration: 1500,
                      leading: Text("Realizado:",style: TextStyle(fontSize: 16, color: Colors.black),),
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
                  "Como avançam os serviços ?",
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 40),
                     child: Text("Etapa",
                       style: TextStyle(
                         fontSize: 25,
                         color: Colors.black,
                         fontWeight: FontWeight.bold
                       ),
                     ),
                   ),
                    Padding(
                    padding: const EdgeInsets.only(right: 58),
                      child: Text("%",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  child: Expanded(
                    child: LinearPercentIndicator(
                        alignment: MainAxisAlignment.center,
                        width: 180.0,
                        lineHeight: 15,
                        percent: 90 / 100,
                        animation: true,
                        center: Text("90%"),
                        animationDuration: 1500,
                        leading: Text(
                          "Fundação: ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        barRadius: Radius.circular(5),
                        progressColor: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Container(
                  child: Expanded(
                    child: LinearPercentIndicator(
                        alignment: MainAxisAlignment.center,
                        width: 180.0,
                        lineHeight: 15,
                        percent: 80 / 100,
                        animation: true,
                        center: Text("80%"),
                        animationDuration: 1500,
                        leading: Text(
                          "Estrutura: ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        barRadius: Radius.circular(5),
                        progressColor: Colors.yellow),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Container(
                  child: Expanded(
                    child: LinearPercentIndicator(
                        alignment: MainAxisAlignment.center,
                        width: 180.0,
                        lineHeight: 15,
                        percent: 60 / 100,
                        animation: true,
                        center: Text("60%"),
                        animationDuration: 1500,
                        leading: Text(
                          "Alvenária:  ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        barRadius: Radius.circular(5),
                        progressColor: Colors.green),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Container(
                  child: Expanded(
                    child: LinearPercentIndicator(
                        alignment: MainAxisAlignment.center,
                        width: 180.0,
                        lineHeight: 15,
                        percent: 30 / 100,
                        animation: true,
                        center: Text("30%"),
                        animationDuration: 1500,
                        leading: Text(
                          "Instalações:",
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                        barRadius: Radius.circular(5),
                        progressColor: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Container(
                  child: Expanded(
                    child: LinearPercentIndicator(
                        alignment: MainAxisAlignment.center,
                        width: 180.0,
                        lineHeight: 15,
                        percent: 15 / 100,
                        animation: true,
                        center: Text("15%"),
                        animationDuration: 1500,
                        leading: Text(
                          "Acabamento:",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        barRadius: Radius.circular(5),
                        progressColor: Colors.orange),
                  ),
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
