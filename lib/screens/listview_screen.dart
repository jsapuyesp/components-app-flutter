import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: Center(
          child: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    onTap: () {},
                  ))
              .toList()

          // ListTile(
          //   leading: Icon(Icons.timelapse),
          //   title: Text('Hola Mundo'),
          // ),
        ],
      )),
    );
  }
}
