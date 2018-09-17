import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:http/http.dart';
import 'package:lifelog/app_component.template.dart' as ng;
import 'main.template.dart' as self;
import 'package:http/browser_client.dart';
import 'package:firebase/firebase.dart';

@GenerateInjector([
  routerProvidersHash,
  ClassProvider(Client, useClass: BrowserClient)
])

final InjectorFactory injector = self.injector$Injector;

void main() {

  initializeApp(
      apiKey: "AIzaSyDblsaXDDU3t8z8owhT3mX3MYyxfUeHVIo",
      authDomain: "todo-d6e51.firebaseapp.com",
      databaseURL: "https://todo-d6e51.firebaseio.com",
      storageBucket: "todo-d6e51.appspot.com");


  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
