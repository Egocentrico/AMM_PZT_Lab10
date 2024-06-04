import 'package:flutter/material.dart';

class CustomCard4 extends StatelessWidget {
  const CustomCard4({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(
          'assets/vaguito1.jpg', 
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
