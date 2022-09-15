import 'package:flutter/material.dart';
import 'package:proyecto_dos/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialogo(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: const Text('Presionaste la alerta, ¿felíz?'),
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10)
      ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            
            children: const [
              Text('Este es el contenido de la Alerta, triste como este sitio.'),
              SizedBox(height: 10),
              Icon(Icons.heart_broken_rounded, color: AppTheme.iconColors, size: 50)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),     
              child: const Text('Cancelar') 
              )
          ],
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
           child: ElevatedButton(
            onPressed:() => displayDialogo(context),
            child: const Text('Mostrar alerta', style: TextStyle(fontSize: 15)),
           ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)        
      ),
    );
  }
}