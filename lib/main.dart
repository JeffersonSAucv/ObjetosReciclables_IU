import 'package:flutter/material.dart';

//mis paginas
import 'package:reciclar_page/pages/lista_materiales.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materiales Reciclables',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
           elevation: 0,
           color: Colors.white
          ) , 
      ),
      home: MaterialesListingScreen(),
     
    );
  }
}