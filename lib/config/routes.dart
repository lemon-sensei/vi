import 'package:flutter/material.dart';

import '../features/admin/presentation/pages/admin_home_page.dart';
import '../features/user/presentation/pages/user_home_page.dart';

class Routes {
  static const String adminHome = '/admin';
  static const String userHome = '/user';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case adminHome:
        return MaterialPageRoute(builder: (_) => const AdminHomePage());
      case userHome:
        return MaterialPageRoute(builder: (_) => const UserHomePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}