import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.photo_album_outlined),
              title: Text('Title card'),
              subtitle: Text(
                  'Culpa et sint excepteur nulla fugiat aliqua mollit do laboris aliquip.'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Cancel')),
                  TextButton(onPressed: () {}, child: const Text('Ok'))
                ],
              ),
            )
          ],
        ));
  }
}
