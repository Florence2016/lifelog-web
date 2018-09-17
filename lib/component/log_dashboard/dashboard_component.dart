import 'package:angular_router/angular_router.dart';
import 'package:angular/angular.dart';
import 'package:lifelog/src/model/lifegroup.dart';
import 'package:lifelog/src/route/route_paths.dart';


@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  styleUrls: ['dashboard_component.css'],
  directives: [coreDirectives,routerDirectives],
)
class DashboardComponent{
  List<Lifegroup> lifegroupList;


  String lgUrl(int id) => RoutePaths.lg.toUrl(parameters: {idParam: '$id'});


}
