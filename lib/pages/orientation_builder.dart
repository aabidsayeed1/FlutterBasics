import 'package:flutter/material.dart';


class MyOrientationBuilder extends StatelessWidget {
  const MyOrientationBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        title: const Text('Orientation View'),
        ),
            body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
             
            //grid with 3 and 4 columns for portrait and landscape mode respectively
            crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
              
            // random item generator
            children: List.generate(100, (index) =>
               Center(
                child: Text(
                  'A $index',
                  style: Theme.of(context).textTheme.headline4,
                ),
              )
              ),
              );
            }),
      ),
    );
        
  }
}