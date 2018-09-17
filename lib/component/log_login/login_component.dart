import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:lifelog/firebase_service.dart';


@Component(
  selector: 'login-loglife',
  templateUrl: 'login_component.html',
  styleUrls: ['login_component.css'],
  directives: [coreDirectives,routerDirectives],
)

class LoginComponent{
final FirebaseService service;

LoginComponent(this.service);

bool hideCode = true;
bool secure = false;
String errorMessage;

void secures(String code){
  code = code.trim();
  if(code.isEmpty){
    secure = false;
    errorMessage = "";
    return null;

  }
  else if (code == 'lifelogbatasan'){
    secure = true;
    errorMessage = "";
    hideCode = false;
  }
  else{
    errorMessage = "You are not Admin user";
    secure = false;
  }
}
}