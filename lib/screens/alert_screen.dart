import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

  //Método de Acción
  void displayDialog(BuildContext context){
    showDialog(
      //barrierDismissible: true, //false no dejaria cerrar displayDialog
      context: context,
      builder: (context) => AlertDialog( 
        /*shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60)
          ),*/               
        title: const Text('Alerta de Mensaje'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('¡Esto es el contenido interno de la alerta!'),
            SizedBox(height: 10),
            FlutterLogo(size: 100)
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar', style: TextStyle(fontSize: 18)))
        ],
      )
      );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton
         (onPressed: () => displayDialog(context),
         child: const Padding(
           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
           child: Text(
            'Procesar',
             style: TextStyle(
              color: Colors.white,
               fontSize: 25)),
         )
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cloud_sync),
        onPressed: (){
          Navigator.pop(context);
        }
        ),
    );
  }
}