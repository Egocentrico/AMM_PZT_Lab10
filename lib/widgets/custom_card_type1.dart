import 'package:flutter/material.dart';
import 'package:lab10_flutter/themes/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.ondemand_video_rounded , size: 50, color: AppTheme.primary),
            title: Text('Información de películas', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Esta es una descripción del título principal para mostrar'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Aceptar', style: TextStyle(color: AppTheme.primary)),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar', style: TextStyle(color: AppTheme.primary)),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
