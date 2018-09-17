import 'package:angular_router/angular_router.dart';


const idParam = 'id';

class RoutePaths {
  static final fellowships = RoutePath(path: 'fellowships');
  static final satelifes = RoutePath(path: 'satelifes');
  static final newfriends = RoutePath(path: 'newfriends');
  static final lifegroups = RoutePath(path: 'lifegroups');
  static final dashboard = RoutePath(path: 'dashboard');
  static final login = RoutePath(path: 'login');
  static final lg = RoutePath(path: '${lifegroups.path}/:$idParam');
}

int getId(Map<String, String> parameters) {
  final id = parameters[idParam];
  return id == null ? null : int.tryParse(id);
}