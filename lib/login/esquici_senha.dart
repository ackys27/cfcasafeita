import 'package:flutter/material.dart';


void main(){
  runApp(esquecisenha());
}

class esquecisenha extends StatelessWidget {
  const esquecisenha ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String email = "";
    String senhanova = "";
    String novasenhaComfere = "";


    void confereEmail() async{
      if(email.contains("@") || email.isNotEmpty){
       await ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Container(
            padding: EdgeInsets.all(15),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Email Correto"),
              ],
            ),
          ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        );
      /* await Future.delayed(Duration(seconds: 3), (){
         Navigator.pushNamed(context, "/login");
       });*/
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Container(
            padding: EdgeInsets.all(15),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Preencha o E-mail corretamente")
              ],
            ),
          ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        );
      }
    }
    void validarSenha() async{
      if(senhanova == novasenhaComfere && senhanova.isNotEmpty && email.isNotEmpty){
        await ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Container(
            padding: EdgeInsets.all(15),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Senha Alterada"),
              ],
            ),
          ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        );
        await Future.delayed(Duration(seconds: 8), (){
          Navigator.pushNamed(context, "/login");
        });
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Container(
            padding: EdgeInsets.all(15),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Por favor, preencha as tabelas corretamente")
              ],
            ),
          ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        );
      }
    }


    /*String validarEmail(){
      if(email.contains("@")){
        return("Email correto");
      }else{
        return("Email Incorreto");
      }
    }*/

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Nova senha"),
        backgroundColor: Colors.deepOrange.shade700,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Digite seu E-mail",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      ),
                    ),
                  ),
                  onChanged: (text){
                    email = text;
                  },
                  /*onTap: (){
                    print(validarEmail());
                  },*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                    labelText: "Digite sua nova senha",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      ),
                    ),
                  ),
                  obscureText: true,
                  onChanged: (text){
                    senhanova = text;
                  },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Digite novamente sua nova senha",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,

                obscureText: true,
                onChanged: (text){
                  novasenhaComfere = text;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: ElevatedButton(
                    onPressed: (){
                      Future.delayed(Duration(microseconds: 500), () {
                        validarSenha();
                      });
                    Future.delayed(Duration(microseconds: 300), () {
                      confereEmail();
                    });
                  },
                    child: const Text(
                      "Retornar",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.deepOrangeAccent[700]),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}