import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const CircleAvatar(
              backgroundColor: Colors.indigo,
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 120,
            backgroundImage: NetworkImage(
                'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/8/87/Stan_Lee.png/revision/latest?cb=20190303192815&path-prefix=es')),
      ),
    );
  }
}
