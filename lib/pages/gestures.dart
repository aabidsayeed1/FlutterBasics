import 'package:flutter/material.dart';


class MyGestures extends StatelessWidget {
  const MyGestures({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestures'),
        backgroundColor: Colors.green,
      ),

body: Center(child: MyButton()),
    
    );
  }
}
class MyButton extends StatelessWidget {
  const MyButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        final snackBar = SnackBar(content:   Text('You just Tapped on Button'));
        Scaffold.of(context).showSnackBar(snackBar);
        
      }
    
      ),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text('Tap Button'),
      ),
    );
  }
}