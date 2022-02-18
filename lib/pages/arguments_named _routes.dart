// import 'package:flutter/material.dart';








// class ArgumentsNamedRoutes extends StatelessWidget {
//   const ArgumentsNamedRoutes({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//   return MaterialApp(
//         onGenerateRoute: (settings) {
//           if (settings.name == PassArgumentsScreen.routeName) {
//             final ScreenArguments args = settings.arguments;
//             return MaterialPageRoute(
//               builder: (context) {
//                 return PassArgumentsScreen(
//                   title: args.title,
//                   message: args.message,
//                 );
//               },
//             );
  
//         }
//          assert(false, 'Implementation ${settings.name}');
//           return null;
//         },
//         title: 'Arguments in named routes',
//         home: HomeScreen(),
//         routes: {
//           ExtractArgumentsScreen.routeName: (context) =>
//               ExtractArgumentsScreen(),
//         });
//   }
// }
 
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GeekForGeeks'),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               child: Text("Extracts arguments"),
//               style: ButtonStyle(
//                 backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
//               ),
//               onPressed: () {
//                 Navigator.pushNamed(
//                   context,
//                   ExtractArgumentsScreen.routeName,
//                   arguments: ScreenArguments(
//                     'Extract Arguments Screen',
//                     'Extracted in the build method.',
//                   ),
//                 );
//               },
//             ),
//             // on tap navigate to named route
//             ElevatedButton(
//               child: Text("Accepts arguments"),
//               style: ButtonStyle(
//                 backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
//               ),
//               onPressed: () {
//                 // on tab change route
//                 Navigator.pushNamed(
//                   context,
//                   PassArgumentsScreen.routeName,
//                   arguments: ScreenArguments(
//                     'Accept Arguments Screen',
//                     'Extracted in the onGenerateRoute function.',
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
 
// class ExtractArgumentsScreen extends StatelessWidget {
//   static const routeName = '/extractArguments';
 
//   @override
//   Widget build(BuildContext context) {
 
//     final args = ModalRoute.of(context)?.settings.arguments;
 
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(args.title),
//       ),
//       body: Center(
//         child: Text(args.message),
//       ),
//     );
//   }
// }
 
// //Widget to accept arguments
// class PassArgumentsScreen extends StatelessWidget {
//   static const routeName = '/passArguments';
 
//   final String title;
//   final String message;
 
 
//   const PassArgumentsScreen({
//     Key? key,
//     required this.title,
//     required this.message,
//   }) : super(key: key);
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text(message),
//       ),
//     );
//   }
// }
 
 
// class ScreenArguments {
//   late final String title_bar;
//   late final String text_message;
 
//   ScreenArguments(this.title_bar,this.text_message);
// }