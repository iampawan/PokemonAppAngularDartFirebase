import 'package:angular/angular.dart';
import 'package:pokedex/src/models/pokemon.dart';
import 'package:pokedex/src/services/pokemon_service.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: "my-pokemon",
  templateUrl: "pokemon_component.html",
  styleUrls: [
    "pokemon_component.css",
    "package:angular_components/css/mdc_web/card/mdc-card.scss.css",
  ],
  providers: [ClassProvider(PokemonService)],
  directives: [
    NgFor,
    NgIf,
    MaterialListComponent,
    MaterialListItemComponent,
  ],
)
class PokemonComponent implements OnInit {
  PokeHub pokeHub;
  PokemonService _pokemonService;
  String title = "Welcome to pokedex";

  PokemonComponent(this._pokemonService);

  Pokemon pokemon;

  @override
  void ngOnInit() {
    fetchData();
  }

  fetchData() async {
    pokeHub = await _pokemonService.fetchPokemonData();
  }

  void onSelect(Pokemon pika) {
    pokemon = pika;
    print(pokemon.name);
  }
}
