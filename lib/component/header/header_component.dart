import 'package:angular/angular.dart';
import 'package:lifelog/firebase_service.dart';



@Component(
    selector: 'layout-header',
    templateUrl: 'header_component.html',
    styleUrls: ['header_component.css'],
    directives: const [coreDirectives])
class HeaderComponent {

  final FirebaseService service;

  HeaderComponent(this.service);


}