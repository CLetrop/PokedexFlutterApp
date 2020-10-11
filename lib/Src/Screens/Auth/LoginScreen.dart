import 'package:Pokedex/Src/Screens/Auth/RegisterScreen.dart';
import 'package:flutter/material.dart';

import '../../HomeScreen.dart';

class LoginScreens extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginScreens> {
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
                      'Pokedex Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: null,
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
                    controller: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Olvidaste tu contraseña'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Iniciar'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Notienes tu cuenta aún!'),
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Registrarse',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
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
