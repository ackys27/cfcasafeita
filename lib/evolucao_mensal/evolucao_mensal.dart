import 'package:flutter/material.dart';

// TELA DE "O QUE AVANÇOU NESSE MÊS"
class evolucao_mensal extends StatefulWidget {
  const evolucao_mensal({
    Key? key,
  }) : super(key: key);

  @override
  State<evolucao_mensal> createState() => _evolucao_mensalState();
}

class _evolucao_mensalState extends State<evolucao_mensal> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(children: [

      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Etapa",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "%",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Serviço",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
      ),
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "O que avançou neste mês ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontFamily: "Pacifico-Regular",
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 2.0, color: Colors.black12),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              child: SafeArea(
                child: Table(
                  border: TableBorder.symmetric(
                      inside: BorderSide(width: 2, color: Colors.black26),
                      outside: BorderSide(width: 3)),
                  defaultColumnWidth: FixedColumnWidth(100),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                  children: [
                    _tableRow,
                    TableRow(children: [
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Fundação",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("1%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Cimento",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Estrutura",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        color: Colors.yellow,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("3,5%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Esgoto",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      )
                    ]),
                   // _tableAve,
                  TableRow(children: [
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Text(
                          "Alvenária",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("5%", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Plataformas",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                    ),
                  ]),
                    TableRow(children: [
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Instalações",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("5,5%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Caixilhos",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("Acabamento",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13)),
                        ),
                      ),
                      Container(
                        color: Colors.orange,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("3,8%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Pintura",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ]),
          ]
        ),
      ),
    );
  }
}
