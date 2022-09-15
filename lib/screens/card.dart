import 'package:flutter/material.dart';
import 'package:proyecto_dos/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
        children: const [
          CustomCard(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://fondosmil.com/fondo/34253.jpg', titulos: 'La oscuridad que un tunel da',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images2.alphacoders.com/521/521477.jpg', titulos:'Un cosmo dentro del espacio'),
           SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://i.ytimg.com/vi/h4iCzUzsIaE/maxresdefault.jpg', titulos: 'Atado en la infinidad',)
        ]
     )
    );
  }
}

