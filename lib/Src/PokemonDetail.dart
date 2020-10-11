import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class PokemonDetail extends StatelessWidget {
  final dynamic pokemon;
  const PokemonDetail({Key key, @required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> onLovesButtonTapped(bool isLiked) async {
      print("estado:" + isLiked.toString());
      return !isLiked;
    }

    Future<bool> onHatesButtonTapped(bool isLiked) async {
      return !isLiked;
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_back,
        ),
        onPressed: () => {Navigator.pop(context)},
      ),
      body: ListView(
        children: [
          Image.asset(
            pokemon['img'],
            fit: BoxFit.fitWidth,
          ),
          Center(
            child: Text(
              pokemon['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: pokemon["type"].length,
              itemBuilder: (BuildContext context, int index) {
                return Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.whatshot,
                        color: Colors.yellow,
                      )),
                  label: Text(
                    pokemon["type"][index],
                    style: TextStyle(fontSize: 24),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LikeButton(
                size: 45,
                circleColor:
                    CircleColor(start: Colors.blue, end: Colors.lightBlue),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: Colors.blue,
                  dotSecondaryColor: Colors.lightBlueAccent,
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.favorite,
                    color: isLiked ? Colors.blue : Colors.grey,
                    size: 45,
                  );
                },
                likeCount: pokemon['loves'],
                countBuilder: (int count, bool isLiked, String text) {
                  var color = isLiked ? Colors.blue : Colors.grey;
                  Widget result;
                  if (count == 0) {
                    result = Text(
                      "0 Loves",
                      style: TextStyle(color: color, fontSize: 20),
                    );
                  } else
                    result = Text(
                      text + " Loves",
                      style: TextStyle(color: color, fontSize: 20),
                    );
                  return result;
                },
                onTap: onLovesButtonTapped,
              ),
              Container(
                width: 80,
              ),
              LikeButton(
                size: 45,
                circleColor:
                    CircleColor(start: Colors.red, end: Colors.redAccent),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: Colors.red,
                  dotSecondaryColor: Colors.redAccent,
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.block,
                    color: isLiked ? Colors.red : Colors.grey,
                    size: 45,
                  );
                },
                likeCount: pokemon['hates'],
                countBuilder: (int count, bool isLiked, String text) {
                  var color = isLiked ? Colors.red : Colors.grey;
                  Widget result;
                  if (count == 0) {
                    result = Text(
                      "0 No Loves",
                      style: TextStyle(color: color, fontSize: 20),
                    );
                  } else
                    result = Text(
                      text + " No Loves",
                      style: TextStyle(color: color, fontSize: 20),
                    );
                  return result;
                },
                onTap: onHatesButtonTapped,
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  "Caracteristicas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
                Text('Alto: ${pokemon["height"]}'),
                Text('Peso: ${pokemon["weight"]}'),
              ],
            ),
          ),
          Divider(
            height: 5,
          ),
          Text(
            "Siguientes Evoluciones",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            height: 15,
          ),
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: pokemon['next_evolution'].length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/ball.png',
                            width: 32,
                          ),
                          Text(
                            pokemon["next_evolution"][index]["num"],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              pokemon["next_evolution"][index]["name"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
