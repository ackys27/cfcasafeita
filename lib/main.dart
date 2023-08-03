
import 'package:appsite/evolucao_mensal/evolucao.dart';
import 'package:appsite/evolucao_mensal/evolucao_mensal.dart';
import 'package:appsite/ficha_financeira/ficha.dart';
import 'package:appsite/fotos/foto_page.dart';
import 'package:appsite/login/esquici_senha.dart';
import 'package:appsite/login/tela_login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:appsite/sobre_incorporadora/incorporadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//ROTAS
class MyApp extends StatefulWidget {
 const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => Splash(),
        "/login": (context) => LoginScreen(),
        "/novasenha": (context) => esquecisenha(),
        "/telas": (context) => MyHomePage(),
      },
    );
  }
}

//TELA DE CARREGAMENTO
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final borderRadius = BorderRadius.circular(20);

  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                  child: Image.asset("assets/principal.png", height: 200, fit: BoxFit.cover,  ))),
              const SizedBox(height: 30,),
              if(defaultTargetPlatform == TargetPlatform.android)
                const CupertinoActivityIndicator(
                  color: Colors.white,
                  radius: 20,
                )
              else
                const CircularProgressIndicator(
                  color: Colors.white,
                )
            ],
          ),
        ),
      ),

    );
  }
}
//MENU DAS PAGINAS
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final pageController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
        "Residencial",
        style: TextStyle(
        color: Colors.yellow.shade700,
        fontSize: 20.0,
        fontFamily: "Pacifico-Regular",
        fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 50),
          children: [
            Container(
              child: ListTile(
                title: Text("Incorporadora", style: TextStyle(fontSize: 20, color: Colors.orange[700], fontFamily: "Pacifico-Regular", fontWeight: FontWeight.bold)),
                onTap: (){
                  _changePage(0);
                  scaffoldKey.currentState!.closeDrawer();
                },
              ),
            ),
            ListTile(
              title: Text("Fotos", style: TextStyle(fontSize: 20, color: Colors.orange[700], fontFamily: "Pacifico-Regular", fontWeight: FontWeight.bold)),
              onTap: (){
                _changePage(1);
                scaffoldKey.currentState!.closeDrawer();
              },
            ),
            ListTile(
              title: Text("Ficha Financeira", style: TextStyle(fontSize: 20, color: Colors.orange[700], fontFamily: "Pacifico-Regular", fontWeight: FontWeight.bold)),
              onTap: (){
                _changePage(2);
                scaffoldKey.currentState!.closeDrawer();
              },
            ),
            ListTile(
              title: Text("Evolução das Obras", style: TextStyle(fontSize: 20, color: Colors.orange[700], fontFamily: "Pacifico-Regular", fontWeight: FontWeight.bold)),
              onTap: (){
              _changePage(3);
              scaffoldKey.currentState!.closeDrawer();
              },
            ),
            ListTile(
              title: Text("O que avançou esse mês", style: TextStyle(fontSize: 20, color: Colors.orange[700], fontFamily: "Pacifico-Regular", fontWeight: FontWeight.bold)),
              onTap: (){
                Future.delayed(Duration(microseconds: 200),(){
                _changePage(4);
                });
                scaffoldKey.currentState!.closeDrawer();

              },
            ),
            SizedBox(height: 50,),
            ListTile(
              title: Text("Sair",style: TextStyle(fontSize: 25, color: Colors.orange[700],fontFamily: "Pacifico-Regular", fontWeight: FontWeight.bold,)),
              onTap: (){
               Navigator.pushNamed(context, "/login");
              },
            )
          ],
        ),
      ),
      body: PageView(
        controller: pageController ,
        children: [
            incorporadora(),
            fotos_page(),
            ficha(),
            evolucao(),
            evolucao_mensal(),
        ],
      ),
    );
  }
  _changePage(int index){
    pageController.animateToPage(index, duration: Duration(milliseconds: 5), curve: Curves.ease);
  }
}

//TELA DE SENHA NOVA
class tela6 extends StatelessWidget {
  const tela6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return esquecisenha();
  }
}






