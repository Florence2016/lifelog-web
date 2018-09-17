import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:lifelog/component/log_satelife/satelife_mock_list.dart';
import 'package:lifelog/src/model/satelife.dart';

@Component(
  selector: 'my-satelife',
  templateUrl: 'satelife_component.html',
  styleUrls: ['satelife_component.css'],
  directives: [coreDirectives,routerDirectives],
)

class SatelifeComponent{

  List<Satelife> satelifeList = mockSatelifeList;
}