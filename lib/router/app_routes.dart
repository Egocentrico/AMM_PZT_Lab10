import 'package:flutter/material.dart';
import 'package:lab10_flutter/models/menu_option.dart';
import 'package:lab10_flutter/screens/alert_screen.dart';
import 'package:lab10_flutter/screens/home_screen.dart';
import 'package:lab10_flutter/screens/screens.dart';
import 'package:lab10_flutter/widgets/widgets.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.house_siding_sharp, name: 'HomeScreen', screen: const HomeScreen()),
    MenuOption(route: 'card', icon: Icons.card_membership_rounded, name: 'CardScreen', screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final options in menuOptions) {
      appRoutes.addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
