import 'package:flutter/material.dart';

import '/models/models.dart';
import '/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    print(settings);
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
      settings: RouteSettings(name: '/error'),
    );
  }
}
