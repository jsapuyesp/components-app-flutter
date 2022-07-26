import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
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
                    child: const Text('Cancelar',
                        style: TextStyle(color: Colors.red))),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Ok'))
              ],
            ));
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
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
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Ok'))
            ],
          );
        });
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
        onPressed: () => !Platform.isAndroid
            ? displayDialogAndroid(context)
            : displayDialogIOS(context),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(), elevation: 0),
        child: const Text('Mostrar alerta'),
      )),
    );
  }
}
