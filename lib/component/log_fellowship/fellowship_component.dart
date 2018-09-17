import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:lifelog/component/log_fellowship/fellowship_mock_list.dart';
import 'package:lifelog/src/model/fellowship.dart';


@Component(
  selector: 'my-fellowship',
  templateUrl: 'fellowship_component.html',
  styleUrls: ['fellowship_component.css'],
  directives: [coreDirectives,routerDirectives],
)


class FellowshipComponent{

  List<Fellowship> fellowshipList = mockFellowshipList;
}