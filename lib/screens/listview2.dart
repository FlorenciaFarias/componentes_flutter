import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
   final options = const['Pacman', 'Tetrix', 'Marios bros'];
  const ListViewScreen2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview 1'),
  
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.deepPurple),
          onTap: () {
            final game = options[index];
           
          },
        ),
        separatorBuilder: (_, __) => const Divider()

       
      ),    
    );
  }
}