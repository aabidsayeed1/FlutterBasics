import 'package:flutter/material.dart';

class MyThemes extends StatelessWidget {
  const MyThemes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyThemes',
      theme: ThemeData(
        
        brightness: Brightness.light,
        primaryColor: Colors.green,
        fontFamily: 'Georgia',
        textTheme:  const TextTheme(
          headline1: TextStyle(fontSize: 72.0,fontWeight: FontWeight.bold,color: Colors.pink),
          headline6: TextStyle(fontSize: 26.0, fontStyle: FontStyle.italic,color: Colors.pink),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ), 
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrangeAccent)
      ),
      home:Scaffold(appBar: 
      AppBar(
        backgroundColor: Colors.green,
        // backgroundColor: Colors.transparent,
        title: const Text('My Themes'),
        ),
        body: Center(
          child: Container(
            
          color: Theme.of(context).colorScheme.secondary,
          child:Text(
            
            'Hello Aabid',
            
            style: Theme.of(context).textTheme.headline1,
            
          ) ,
        ),
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.red),
            ),
            child: const FloatingActionButton(
              elevation: 10,
              
              splashColor: Colors.black,
              onPressed: null,
            child: Icon(Icons.arrow_circle_up),),
            ) ,
        ) ,
        
      
    );
  }
}