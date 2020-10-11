class PokemonService {
  getPokemos() {
    return [
      {
        "id": 25,
        "name": "Pikachu",
        "img": "assets/pikachu.png",
        "type": ["Electric"],
        "height": "0.41 m",
        "weight": "6.0 kg",
        "loves": 0,
        "hates": 0,
        "next_evolution": [
          {"num": "026", "name": "Raichu"}
        ]
      },
      {
        "id": 133,
        "name": "Eevee",
        "img": "assets/Eevee.png",
        "type": ["Normal"],
        "height": "0.30 m",
        "weight": "6.5 kg",
        "loves": 0,
        "hates": 0,
        "next_evolution": [
          {"num": "134", "name": "Vaporeon"},
          {"num": "135", "name": "Jolteon"},
          {"num": "136", "name": "Flareon"}
        ]
      },
      {
        "id": 1,
        "name": "Bulbasaur",
        "img": "assets/Bulbasor.png",
        "type": ["Grass", "Poison"],
        "height": "0.71 m",
        "weight": "6.9 kg",
        "loves": 0,
        "hates": 0,
        "next_evolution": [
          {"num": "002", "name": "Ivysaur"},
          {"num": "003", "name": "Venusaur"}
        ]
      },
      {
        "id": 4,
        "name": "Charmander",
        "img": "assets/charmander.png",
        "type": ["Fire"],
        "height": "0.61 m",
        "weight": "8.5 kg",
        "loves": 0,
        "hates": 0,
        "next_evolution": [
          {"num": "005", "name": "Charmeleon"},
          {"num": "006", "name": "Charizard"}
        ]
      },
      {
        "id": 24,
        "name": "Arbok",
        "img": "assets/Arbok.png",
        "type": ["Poison"],
        "height": "3.51 m",
        "weight": "65.0 kg",
        "loves": 0,
        "hates": 0,
        "next_evolution": []
      },
      {
        "id": 7,
        "name": "Squirtle",
        "img": "assets/squirtle.png",
        "type": ["Water"],
        "height": "0.51 m",
        "weight": "9.0 kg",
        "loves": 0,
        "hates": 0,
        "next_evolution": [
          {"num": "008", "name": "Wartortle"},
          {"num": "009", "name": "Blastoise"}
        ]
      }
    ];
  }
}
