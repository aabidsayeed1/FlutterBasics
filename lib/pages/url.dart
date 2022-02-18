import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


_launchURLBrowser() async {
  const url = 'https://www.geeksforgeeks.org/';
  if (!await launch(url)) throw 'Could not launch $url';

//   if (await canLaunch(url)){
//   await launch(url);
// } else{
//   throw 'could not launch $url';
// } 
}

_launchURLApp() async{
  const url = 'https://www.geeksforgeeks.org/';
  if (await canLaunch(url)){
  await launch(url,forceSafariVC: true,forceWebView: true);
  }else{
    throw 'Could not Launch $url';
  }
}

class MyURL extends StatelessWidget {
  const MyURL({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
     appBar: AppBar(title: Text('URL Launch'),
      backgroundColor: Colors.green, 
     ),
     body: SafeArea(child: Center(
       child: Column(
         children:[
           Container(
             height: 250.0,
           ),
           Text('Welcome To Url!',
           style: TextStyle(color: Colors.green,
           fontWeight: FontWeight.bold),),
           Container(height: 20.0,),
          
           ElevatedButton(
             onPressed: _launchURLBrowser,
             child: Text('Open in Browser'), ),


             Container(
             height: 25.0,
           ),
              ElevatedButton(
             onPressed: _launchURLApp,
             child: Text('Open in App'),
            
             ),


         ]
       ),
     )),
    

    );

  }
}