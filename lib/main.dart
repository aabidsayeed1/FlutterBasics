import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'pages/google_fonts.dart';
import 'pages/lazy_loader.dart';
import 'pages/orientation_builder.dart';
import 'pages/route_transition.dart';
import 'pages/skeleton_text.dart';
import 'pages/themes.dart';

// import 'hello.dart';

// welcome to my flutter journay
// instagram id = aabidsayeed1
// Name = Aabid
// M-tech CSE,  flutter developer 

// void main() => runApp(  const MyrouteTransition());

main() {
  runApp(MaterialApp(
    home: MyRouteTransition(),
  ));
}


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
        title: const Text("hello Aabid"),
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

// horizontal List 

class HorizontalList extends StatelessWidget {
  const HorizontalList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const title = 'Assalamu Aliakum Aabid';
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,color: Colors.deepOrange,)
            ,onPressed: (){},
            tooltip: 'Menuuu',),
          actions:  [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.deepOrange),
                onPressed:(){},
                tooltip: 'Hello its camera here',),
            
          ],
         title: const Text(title,style: 
         TextStyle(fontWeight: FontWeight.bold),),
         backgroundColor: Colors.green,
         shape:
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
            elevation: 40.0,
            shadowColor: Colors.red,
         
        ),
        body: Container(
          
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 800.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 480.0,
                width: 350,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: const DecorationImage(
                    image:
                    NetworkImage('https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnN8ZW58MHx8MHx8&w=1000&q=80'),
                    fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                    ),
                ),
                Container(
                  height: 480.0,
                  width: 350.0,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image:NetworkImage('https://images.pexels.com/photos/1545743/pexels-photo-1545743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                       fit: BoxFit.fill),
                       shape: BoxShape.rectangle,
                  ),
                  
                ),
                Container(
                  height:480.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                    image: NetworkImage('https://wallpaperaccess.com/full/184117.jpg'),
                     fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                   ),
                ),  
            ],
          ),
        ),
      ),
    );
  }
}

// Expansion Tile Card

class ExpansionTileCard1 extends StatelessWidget {
  // const ExpansionTileCard1({ Key? key, required Text title, required CircleAvatar leading, required Text subtitle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expansion Tile Card",
      theme: ThemeData(
        primarySwatch: Colors.green
        ),
        home:  const MyHomePage(title : 'Aabid'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({ Key? key,required this.title }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ExpansionTileCardState> cardA =  GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB =  GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(25) ),
        title: Text(widget.title),
        elevation: 30,
        bottomOpacity: 10.0,
        
      ),
      
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        
        children: <Widget>[
          const Icon(Icons.verified_user,
               semanticLabel: "Verified",
              size: 40,
              ),
          Padding(padding: 
         const EdgeInsets.symmetric(horizontal : 4.0),
         
        child: ExpansionTileCard(
          baseColor: Colors.pink,
          expandedColor: Colors.blue,
          elevation: 50,
          shadowColor: Colors.black,
           animateTrailing: false,
          borderRadius: BorderRadius.circular(20),
          key: cardA,
          leading:  CircleAvatar(
            child: Image.asset('assets/bb.png'),),
              title: const Text('Tap to Expand!'),
             subtitle: const Text('It has the GFG Logo.'),
             children:  [
               const Divider(
                 thickness: 10.0,
                 height: 10.0,
               ),
               Align(
                 
                 alignment: Alignment.centerLeft,
                 child: Padding(padding: 
                 const EdgeInsets.symmetric(
                   horizontal: 16.0,
                   vertical: 8.0,
                 ),
                  child: Image.asset('assets/aa.jpg')
                 ),
               )
             ], 
        )  ,
        
       



        ),
        const Divider(
          
          thickness: 10,
          height: 10,
          color: Colors.blueGrey,
        ),
        Padding(padding:const EdgeInsets.symmetric(
          horizontal: 4.0),
          child:ExpansionTileCard(
            expandedColor: Colors.blue,
            baseColor: Colors.pink,
            borderRadius: BorderRadius.circular(20),
            key: cardB,
            leading: const CircleAvatar(
              child: Icon(Icons.verified_user,
              semanticLabel: "Verified",size: 40,),
              
            ),
          title: const Text('tap to Expand'),
          subtitle: const Text('there is renoldo'),
          children:  [
            const Divider(
              height: 10,
              thickness: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Image.asset('assets/bb.png'),
                ),
            )
          ],
        ))
          
          ],
      ),
    );
  }
}

//Icon class

// Expanded Class

class DicePage extends StatefulWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      home: Scaffold(
        
        backgroundColor: Colors.green,
        appBar: AppBar(title: 
        const Text('Aabid Expanded class',style: TextStyle(
          color: Colors.green),
          ),
          backgroundColor: Colors.white,
          ),
          
          body: Center(
            
            child : Row(
              
              children: <Widget> [
            Expanded(
              flex: 3,
              child: TextButton(
                onPressed: () {  },
                child: Image.asset('assets/aa.jpg'),
              ),
            ),
            Expanded(
              flex: 5,
              child: 
            TextButton(
              
              onPressed: () {},
              child: 
                Container(
                  
                  transform: Matrix4.rotationZ(0.1),
                  child: 
                  Image.asset('assets/bb.png'))
               )
               )
            ],)
          ) ,
      ),
      
    );
  }
}

// ProgressIndicator 
class MyProgressIndicator extends StatelessWidget {
  const MyProgressIndicator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('hello aabid'),
        backgroundColor:Colors.green ),
        body: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                backgroundColor: Colors.redAccent,
                valueColor: AlwaysStoppedAnimation(
                  Colors.green),
                  strokeWidth: 5,
                  // value: 0.1,

                  ),
                  SizedBox(
                    height: 55,
                    
                  ),
                  LinearProgressIndicator(
                    backgroundColor: Colors.redAccent,
                    valueColor:AlwaysStoppedAnimation(Colors.green),
                    minHeight: 10,
                    value: 0.7,


                  ),
            ],
          ),
        )
      ),
    );
  }
}

//Staggered Grid View 
// insert dependencies: 
//flutter_staggered_grid_view: ^0.6.1
  

class MyStaggeredGridView extends StatelessWidget {
  const MyStaggeredGridView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text('Hello Grid'),
      ),
      body: Container(
      
        color: Colors.amber,
        child: StaggeredGrid.count(
  crossAxisCount: 4,
  mainAxisSpacing: 4,
  crossAxisSpacing: 4,
  children:  [
    StaggeredGridTile.count(
      crossAxisCellCount: 4,
      mainAxisCellCount: 4,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
        child: Image.network(
          'https://picsum.photos/seed/image005/500/600',
          fit: BoxFit.fill,)),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
        child: Image.network(
          
        'https://picsum.photos/seed/image001/500/500',
        fit: BoxFit.fill,)),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
        child: Image.network(
          'https://picsum.photos/seed/image002/500/800',
          fit: BoxFit.fill,)),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
        child: Image.network(
          'https://picsum.photos/seed/image003/500/300',
          fit: BoxFit.fill,)),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
        elevation: 50,
        shadowColor: Colors.black,

        child: Image.network(
          'https://picsum.photos/seed/image007/500/400',
          fit: BoxFit.fill,),
          
          
          
          ),
    ),
  ],
),
      ),
      ),
      
    );
  }
}
