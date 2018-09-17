import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:lifelog/component/log_newfriends/newfriend_mock_list.dart';
import 'package:lifelog/src/model/newfriends.dart';

@Component(
  selector: 'my-newfriends',
  templateUrl: 'newfriend_component.html',
  styleUrls: ['newfriend_component.css'],
  directives: [coreDirectives,routerDirectives],
)

class NewfriendComponent{

  List<Newfriends> newfriendsList = mockNewfriendsList;
}