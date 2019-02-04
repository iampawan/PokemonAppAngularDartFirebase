import 'dart:convert';

import 'package:pokedex/src/models/pokemon.dart';
import 'package:http/http.dart';

class PokemonService {
  var url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  PokeHub pokeHub;

  final Client _http;

  PokemonService(this._http);

  Future<PokeHub> fetchPokemonData() async {
    var res = await _http.get(url);
    var decodedJson = jsonDecode(res.body);
    pokeHub = PokeHub.fromJson(decodedJson);
    print(pokeHub.toJson());
    return pokeHub;
  }
}
