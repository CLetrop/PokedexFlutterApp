import 'package:Pokedex/Src/PokemonDetail.dart';
import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  final dynamic json;

  PokemonCard({@required this.json});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: new InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PokemonDetail(
                pokemon: this.json,
              ),
            ),
          );
        },
        child: Container(
          child: Column(
            children: [
              Image.asset(
                json['img'],
                height: 200,
              ),
              Text(
                json['name'],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
