import 'package:Pokedex/Src/Screens/Auth/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new LoginScreens(),
      title: new Text(
        'Bienvenido a tu pokedex',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.asset('assets/pokemon.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.blue,
    );
  }
}
