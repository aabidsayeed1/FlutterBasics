import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyGoogleFonts extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(appBar:
       AppBar(
         title: const Text('Google Fonts'),
         backgroundColor: Colors.green,
       ),
       body:  SafeArea(
         child: Container(
          color: Colors.blueGrey,
          padding: const EdgeInsets.all(40),
           child: const Center(

             
             child: Text(
             'Welcome to codewithkashmir',
             style: TextStyle(
               fontFamily: 'Pacifico',
               fontSize: 40.0,
               color: Colors.green,
               fontWeight: FontWeight.bold,
             ),
           ) ),
         ),
       ),
       ),
      
    );
  }
}