import 'package:flutter/material.dart';

class ListViewFinishedScreen extends StatelessWidget {
  const ListViewFinishedScreen({Key? key}) : super(key: key);

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
        title: const Text('ListView 2'),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,
              color: Colors.indigo),
          onTap: () {},
        ),
        //separatorBuilder: (_, __) => const Divider(),
      )),
    );
  }
}
