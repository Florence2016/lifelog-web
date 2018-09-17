import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';
import 'package:lifelog/component/log_fellowship/fellowship_component.template.dart' as fellowship_template;
import 'package:lifelog/component/log_satelife/satelife_component.template.dart' as satelife_template;
import 'package:lifelog/component/log_newfriends/newfriend_component.template.dart' as newfriend_tempplate;
import 'package:lifelog/component/log_lifegroup/lifegroup_component.template.dart' as lifegroup_template;
import 'package:lifelog/component/log_dashboard/dashboard_component.template.dart' as dashboard_template;
import 'package:lifelog/component/log_login/login_component.template.dart' as login_template;
export 'route_paths.dart';


class Routes{
  static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: login_template.LoginComponentNgFactory,
  );

  static final fellowships = RouteDefinition(
    routePath: RoutePaths.fellowships,
    component: fellowship_template.FellowshipComponentNgFactory,
  );

  static final satelifes = RouteDefinition(
    routePath: RoutePaths.satelifes,
    component: satelife_template.SatelifeComponentNgFactory,
  );

  static final newfriends = RouteDefinition(
    routePath: RoutePaths.newfriends,
    component: newfriend_tempplate.NewfriendComponentNgFactory,
  );

  static final lifegroups = RouteDefinition(
    routePath: RoutePaths.lifegroups,
    component: lifegroup_template.LifegroupComponentNgFactory,
  );

  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );


  static final all = <RouteDefinition>[
    fellowships,
    satelifes,
    newfriends,
    lifegroups,
    dashboard,
    login,

    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    ),
  ];
}