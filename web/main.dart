import 'package:angular/angular.dart';
import 'package:pokedex/app_component.template.dart' as ng;
import 'main.template.dart' as self;
import 'package:firebase/firebase.dart' as fb;
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

@GenerateInjector([
  ClassProvider(Client, useClass: BrowserClient),
])
final InjectorFactory injector = self.injector$Injector;

void main() {
  fb.initializeApp(
    apiKey: "AIzaSyDyA0WHPSf9Nu5iSzwvjP2daVWC4CrK_Ig",
    authDomain: "flutterdemo-9c586.firebaseapp.com",
    databaseURL: "https://flutterdemo-9c586.firebaseio.com",
    projectId: "flutterdemo-9c586",
    storageBucket: "flutterdemo-9c586.appspot.com",
    messagingSenderId: "461305999095",
  );
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
