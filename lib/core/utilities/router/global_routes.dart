enum InitialRoutes {
  splash(RouteModel(name: 'splash', path: '/')),
  homeContainer(RouteModel(
      name: "home_container",
      path: "/home_container/:tab(${BottomBarRoutes.tabs})"));

  const InitialRoutes(this.route);

  final RouteModel route;

  /// used to navigate between routes using names
  String get name => route.name;
}

/// Contains bottom bar routes keys
abstract class BottomBarRoutes {
  static const String home = "home";
  static const String wallet = "wallet";
  static const String sales = "sales";
  static const String orders = "orders";
  static const String more = "more";
  static const String tabs = "$home|$wallet|$sales|$orders|$more";
}

/// Blueprint for route configuration
class RouteModel {
  const RouteModel({required this.name, required this.path});

  final String name;
  final String path;
}
