import 'package:flutter/material.dart';
import 'package:components_app/router/app_routes.dart';
import 'package:components_app/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => ListViewScreen());
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            itemCount: menuOptions.length),
      ),
    );
  }
}
