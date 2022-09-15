import 'package:flutter/material.dart';


class CustomCardType2 extends StatelessWidget {
final String imageUrl;
final String titulos;
   const CustomCardType2({
    super.key, 
    required this.imageUrl, 
    required this.titulos
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: 10,
     
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/Representation.jpg'),
            width: double.infinity,
            height: 190,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(microseconds: 300),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(titulos))
        ]),
    );
  }
}