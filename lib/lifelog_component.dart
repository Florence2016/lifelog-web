import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:lifelog/component/footer/footer_component.dart';
import 'package:lifelog/component/header/header_component.dart';
import 'package:lifelog/firebase_service.dart';
import 'package:lifelog/src/route/route_paths.dart';
import 'package:lifelog/src/route/routes.dart';

@Component(
  selector: 'lifelog',
  styleUrls: ['lifelog_component.css'],
  templateUrl: 'lifelog_component.html',
  directives: const [
    routerDirectives,
    coreDirectives,
    HeaderComponent,
    FooterComponent,
  ],
  exports: [RoutePaths, Routes],
)

class LifelogComponent implements OnInit{
  final FirebaseService service;
  final Router _router;

  @ViewChild("submit")
  Element submitButton;

  LifelogComponent(this.service, this._router);

  submitForm() {
    submitButton.blur();
  }

  @override
  void ngOnInit() {
    // TODO: implement ngOnInit
  }

}