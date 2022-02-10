import 'package:flutter/material.dart';

void main() => runApp(const TabBarDemo());

class GeekforGeeks extends StatelessWidget {
  const GeekforGeeks({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeekforGeeks',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home:
      //  MyStatefulWidget(),
      Scaffold(
        
        backgroundColor: Colors.grey,
        drawer: Drawer(
          child: ListView(
            children: const <Widget> [
              DrawerHeader(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.green,
                
                ),
                child: Text(
                  'GeeksforGeeks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  ),   
              ),
              ListTile(
                title: Text('People'),
                leading:
                Icon(Icons.people)
              ),
              ListTile(
                title: Text('Email'),
                leading: Icon(Icons.email),
                ),
              ListTile(
                  title: Text("inbox"),
                  leading: Icon(Icons.inbox),
                ),
            ],
          ),
        ),
        appBar:AppBar( 
          title: Text("awesome"),
          actions:<Widget> [
            IconButton(onPressed: (){},
             icon:Icon(Icons.comment),
             tooltip: 'Comment Icon', 
             ),
             IconButton(onPressed: (){},
             icon: Icon(Icons.settings),
             tooltip: 'Settings Icon',),
          ],
          // leading: IconButton(
          //   icon: Icon(Icons.people),
          //   tooltip: "Menu Icon",
          //   onPressed: (){},),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 70.2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
           ),
        elevation: 30.00,
        backgroundColor: Colors.green,
        shadowColor: Colors.red,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          elevation: 10.0,
          child: Icon(Icons.add),
          tooltip: 'floading icon',
        ),
         bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              tooltip: "google",
             label : "Home" ,
             icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                label: 'Profile',
              icon: Icon(Icons.account_circle))
          ],
          onTap: (int indexOfItem){
            
          },
          ),
        body: Container(
          height: 150,
          width: double.infinity,
         // color: Colors.purple,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            
            color: Colors.green,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black,width: 3)
            ),
            transform: Matrix4.rotationZ(0.1),
          child:
          
           Center(
             child: RichText(
               text: TextSpan(
                 text: 'Hello Aabid ',
                 style: DefaultTextStyle.of(context).style,
                 children: const <TextSpan> [
                   TextSpan(
                     text: 'Bin ',
                     style: TextStyle(color:Colors.purple,
                     fontWeight: FontWeight.bold,
                     fontSize: 20)
                   ),
                   TextSpan(
                     text: 'Sayeed',
                     style: TextStyle(color:Colors.red,
                     fontWeight: FontWeight.bold)
                   ),

                 ]
               ),
               ),
             ),
           ),
        ),
        
       
    );
    
        
    
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({ Key? key }) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0 : Home',
    style: optionStyle),
    Text(
      'Index 1 : Business',
    style: optionStyle),
    Text(
      'Index 2 : School',
    style: optionStyle),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello Aabid"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 70.2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
           ),
           elevation: 30.00,
        backgroundColor: Colors.green,
        shadowColor: Colors.red,

      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,

              ),
              child: 
            Text("Drawer Header",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24)),
              ),
              Divider(
                thickness: 30,
                height: 10,
              color: Colors.lightGreen,),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Message',style: 
                TextStyle(color: Colors.white),) ,
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile',style: 
                TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings',style: 
                TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings',style: 
                TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold),
                ),
              )

          ],
        ),
      ),
    );
  }
}


// Demo Tabs 
class TabBarDemo extends StatelessWidget {
  const TabBarDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
         child: Scaffold(
           appBar:AppBar(
             title: const Text("Hello Aabid"),
               backgroundColor: Colors.green,
             bottom: const TabBar(
               tabs: [
                 Tab(icon: Icon(Icons.music_note)),
                 Tab(icon: Icon(Icons.music_video)),
                 Tab(icon: Icon(Icons.camera_alt),),
                 Tab(icon: Icon(Icons.grade),),
                 Tab(icon: Icon(Icons.email),),
               ],
               ),
               
           ),
           body: const TabBarView(children: [
             Icon(Icons.music_note),
             Icon(Icons.music_video),
             Icon(Icons.camera_alt),
             Icon(Icons.grade),
             Icon(Icons.email)])
            ,)
            ),
    );
  }
}