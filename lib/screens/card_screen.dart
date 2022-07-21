import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCard(),
              SizedBox(height: 10),
              CustomCardType(
                imageUrl:
                    'https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058__340.jpg',
                textCard: 'Un paisaje',
              ),
              SizedBox(height: 10),
              CustomCard(),
              SizedBox(height: 10),
              CustomCardType(
                imageUrl:
                    'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
              ),
              SizedBox(height: 10),
              CustomCard(),
              SizedBox(height: 100),
            ]));
  }
}
