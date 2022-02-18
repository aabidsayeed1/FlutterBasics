import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



Future <Album> fetchAlbum() async {
  String url = 'https://jsonplaceholder.typicode.com/albums/1';
  
  final response = await
  http.get(Uri.https(url, ''));

  if (response.statusCode == 200){
    return Album.formJson(json.decode(response.body));
  }else{
    throw Exception('Loading album fialed');
  }
}

Future<Album> updateAlbum(String title) async{
  String url1 ='https://jsonplaceholder.typicode.com/albums/1';
  final http.Response response = await http.put(
   Uri.https(url1, ''),
    headers:  <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );
  if (response.statusCode == 200){
    return Album.fromJson(json.decode(response.body));

  }else {
    throw Exception('Failed to update the album!');
  }

}
class Album {
  
  final int id;
  final String title;
  Album ({required this.id, required this.title});
  factory Album.fromJson(Map<String, dynamic>json){
    return Album(id: json['id'], title: json['title'],);
  }

  static Future<Album> formJson(decode) {
    throw Exception('data');
  }
}

class MyWebSocket extends StatefulWidget {
  const MyWebSocket({ Key? key }) : super(key: key);
  

  @override
  _MyWebSocketState createState() => _MyWebSocketState();
}

class _MyWebSocketState extends State<MyWebSocket> {
  
  final TextEditingController _controller = TextEditingController();
   late Future <Album> _futureAlbum;
   
   @override
  void initState() {
    super.initState();
    _futureAlbum = getAlbum();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  'uodate data',
      theme:  ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text('WebSockets'),
        backgroundColor: Colors.teal[500],
    
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<Album>(
            future: _futureAlbum,
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(snapshot.data!.title),
                      TextField(
                        controller: _controller,
                        decoration: InputDecoration(hintText: 'Enter Title'),
                      ),
                      ElevatedButton(
                          child: Text('Update Data'),
                          onPressed: () {
                            setState(() {
                              _futureAlbum = updateAlbum(_controller.text);
                            });
                          },
                        ),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                }
                return CircularProgressIndicator();
              },
            ),
          ),
        ),
    );
    
  }






}

Future<Album> getAlbum() {
  throw Exception();
}