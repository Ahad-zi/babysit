import 'package:babysit/auth/chooseRoleScreen.dart';
import 'package:babysit/auth/signin.dart';
import 'package:babysit/auth/signup.dart';
import 'package:babysit/auth/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = '/';
  static const String chooseRole = '/choose-role';
  static const String signUp = '/sign-up';
  static const String login = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as String?; 

    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case chooseRole:
        return MaterialPageRoute(builder: (_) => ChooseRoleScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => SignUpScreen(role: args ?? 'Parent'));
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen(role: args ?? 'Parent'));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
