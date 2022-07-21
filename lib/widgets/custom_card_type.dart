import 'package:flutter/material.dart';

class CustomCardType extends StatelessWidget {
  final String imageUrl;
  final String? textCard;

  const CustomCardType({Key? key, required this.imageUrl, this.textCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage(
            'assets/images/jar-loading.gif',
          ),
          width: double.infinity, // Toma todo el ancho posible
          height: 160,
          fit: BoxFit.cover, // Adapta la imagen a todo el tamaño posible
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (textCard != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.all(10),
            child: Text(textCard ?? 'Sin descripcion'),
          )
      ]),
    );
  }
}
