import 'package:flutter/material.dart';

import 'screens/login/login_screen.dart';
import 'screens/splash/splash_screen.dart';

class RouteController {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No defined route ${settings.name}'),
            ),
          ),
        );
    }
  }
}
