import 'package:flutter/material.dart';
import '../screens/screens.dart';
import 'package:components_app/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: Borrar Home
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listView',
        name: 'ListView Screen',
        screen: const ListViewScreen(),
        icon: Icons.list),
    MenuOption(
        route: 'listViewFinished',
        name: 'ListView Finished Screen',
        screen: const ListViewFinishedScreen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.warning),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.credit_card)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // Otra manera de trabajar las rutas
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': ((context) => const HomeScreen()),
  //   'listView': ((context) => const ListViewScreen()),
  //   'listViewFinished': ((context) => const ListViewFinishedScreen()),
  //   'alert': ((context) => const AlertScreen()),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
