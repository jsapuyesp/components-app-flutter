import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              title: const Text('Alerta'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Contenido de la alerta'),
                  SizedBox(
                    height: 10,
                  ),
                  FlutterLogo(
                    size: 100,
                  )
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancelar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cancel_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => displayDialog(context),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(), elevation: 0),
        child: const Text('Mostrar alerta'),
      )),
    );
  }
}
