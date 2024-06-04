import 'package:flutter/material.dart';
import 'package:lab10_flutter/themes/app_theme.dart';
import 'package:lab10_flutter/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  static const routeName = 'card_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
         leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        title: const Text('Pelis Insanas - Paul Zelada', style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            CustomCard1(),
            SizedBox(height: 10),
            CustomCard2(),
            SizedBox(height: 10),
            CustomCard3(),
            SizedBox(height: 10),
            CustomCard4(),
            SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.cloud_sync),
          onPressed: () {
            Navigator.pop(context);
          }),
    );

    
  }
}
