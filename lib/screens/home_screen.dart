
import 'package:lab10_flutter/router/app_routes.dart';
import 'package:lab10_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Laboratorio 10_Cruz',
          style: TextStyle(color: AppTheme.primary)
          ),
        elevation: 0,
        //backgroundColor: Colors.indigo[800],
      ),

      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary),
          title: Text(AppRoutes.menuOptions[index].name),
          trailing: const Icon(Icons.fork_right_sharp, color: AppTheme.primary),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) => const AlertScreen());
            //Navigator.push(context,route);
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder:(context, index) => const Divider(),
        itemCount: AppRoutes.menuOptions.length
        ),
    );
  }
}