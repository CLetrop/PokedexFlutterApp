import 'package:Pokedex/Src/Screens/Auth/LoginScreen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image.asset('assets/pokemon.png'),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 20),
                    child: Text(
                      'Registrate',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Usuario',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Registrarse'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Ya tienes una cuenta'),
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreens(),
                          ),
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
