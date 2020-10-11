import 'package:Pokedex/Src/PokemonCard.dart';
import 'package:Pokedex/Src/Service/PokemonService.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var json = PokemonService().getPokemos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/pokemon.png',
            width: 120,
            height: 120,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: json.length,
          itemBuilder: (BuildContext context, int index) {
            return PokemonCard(json: json[index]);
          },
        ),
      ),
    );
  }
}
