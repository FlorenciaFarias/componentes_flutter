import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.iconColors,),
            title: Text('Título'),
            subtitle: Text('Solo soy un párrafo que no tiene ningún sentido'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                 style: TextButton.styleFrom(primary: Colors.deepOrange),
                 child: const Text('Cancel'),
                 ),
                 TextButton(
                  onPressed: () {},
                 child: const Text('OK')
                 ),
              ],
            ),
          )
        ],
      )
    );
    
  }
}