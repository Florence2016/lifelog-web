import 'dart:async';

import 'package:angular/angular.dart';
import 'package:lifelog/component/log_lifegroup/lg_mock_list.dart';
import 'package:lifelog/src/model/lifegroup.dart';
import 'package:lifelog/src/route/route_paths.dart';


@Component(
  selector: 'my-liferoup',
  styleUrls: ['lifegroup_component.css'],
  templateUrl: 'lifegroup_component.html',
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class LifegroupComponent {

  List<Lifegroup> lifegroupList = mockDataList;
  Lifegroup selected;
  String errorMessage;

}
