import 'package:angular/angular.dart';
import 'package:pokedex/src/components/pokemon_component/pokemon_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [PokemonComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in PokemonComponent.
}
