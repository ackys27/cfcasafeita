import 'package:appsite/login/user.dart';
import 'package:flutter/material.dart';


//TELA DE LOGIN
class LoginScreen extends StatelessWidget {

   TextEditingController _emailInputController = TextEditingController();
   TextEditingController _senhaInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String email = "";
    String senha = "";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent.shade700,

      ),
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              const SizedBox(height: 100.0),
              TextFormField(
                controller: _emailInputController,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  icon: Icon(
                    Icons.email,
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

                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 100.0),

              TextFormField(
                controller: _senhaInputController,
                decoration: const InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  icon: Icon(
                    Icons.password,
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
                onChanged: (text) {
                  senha = text;
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/novasenha");
                  },
                  child: const Text("Esqueci a senha ? ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        height: 3,
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100.0,),
              SizedBox(
                height: 44.0,
                child: ElevatedButton(
                  onPressed: () {
                    _doSignUp();
                    //print("Email $email");
                    //print("Email $senha");
                    if (email.contains("@") && senha.isNotEmpty) {
                      Navigator.pushNamed(context, "/telas");
                    } else {
                     // debugPrint("Email ou senha incorretos tente novamente");
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
                                Text("Por favor, preencha o e-mail e senha corretamente ")
                              ],
                          ),
                        ),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Colors.deepOrangeAccent[700]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _doSignUp(){
    User newUser = User(email: _emailInputController.text, senha: _senhaInputController.text);

    print(newUser);
  }


}
