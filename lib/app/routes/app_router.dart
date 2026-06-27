import '../../features/plant_owner/presentation/pages/plant_dashboard.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/role_selection_page.dart';
import '../../features/customer/presentation/pages/customer_dashboard.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case '/':
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );

      case '/role-selection':
        return MaterialPageRoute(
          builder: (_) => const RoleSelectionPage(),
        );

      case '/customer-dashboard':
        return MaterialPageRoute(
          builder: (_) => const CustomerDashboard(),
        );
case '/plant-dashboard':
  return MaterialPageRoute(
    builder: (_) => const PlantDashboard(),
  );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Route Not Found"),
            ),
          ),
        );
    }
  }
}
