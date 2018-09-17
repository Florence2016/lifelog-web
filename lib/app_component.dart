import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:lifelog/component/footer/footer_component.dart';
import 'package:lifelog/component/header/header_component.dart';
import 'package:lifelog/component/log_login/login_component.dart';
import 'package:lifelog/firebase_service.dart';
import 'package:lifelog/lifelog_component.dart';
import 'package:lifelog/src/route/route_paths.dart';
import 'package:lifelog/src/route/routes.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [
    routerDirectives,
    coreDirectives,
    LoginComponent,
    LifelogComponent,
  ],
  exports: [RoutePaths, Routes],
  providers: const [FirebaseService],
)
class AppComponent implements OnInit{
  final FirebaseService service;

  AppComponent(this.service);

  @override
  void ngOnInit() {
    service.init();
  }

}
