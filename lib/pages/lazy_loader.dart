import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';


class MyLazyLoader extends StatefulWidget {
  const MyLazyLoader({ Key? key }) : super(key: key);

  @override
  _MyLazyLoaderState createState() => _MyLazyLoaderState();
}

class _MyLazyLoaderState extends State<MyLazyLoader> {

  List<int> data = [];
  int currentLength =0;
  final int increment = 5;
  bool isLoading = false;

  @override
  void initState() {
    _loadMore();
    super.initState();
  }
  Future _loadMore() async{
    setState(() {
      isLoading= true;
    });
    await Future.delayed(const Duration(seconds: 1));
    for (var i = currentLength; i<=currentLength+increment; i++){
      data.add(i);
    }
    setState(() {
      isLoading= false;
      currentLength= data.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Lazy Loader',
      home: Scaffold(
        
        backgroundColor: Colors.green,
        appBar: AppBar(
          
          actions:  [
            Container(
              padding: const EdgeInsets.only(right: 8.0),
              child:
               const Icon(Icons.camera_alt,)),
               Container(
              padding: const EdgeInsets.only(right:8.0),
              child:
               const Icon(Icons.home,))
          ],
          shadowColor: Colors.transparent,
        title: const Text('Lazy Loader'),
        backgroundColor: Colors.green,

        ),
        body: LazyLoadScrollView(
          isLoading: isLoading,
          onEndOfPage:() => _loadMore(),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context,position){
              return DemoItem(position: position);
            }
            ),
            ),
            
        ),
      
    );
  }
}
class DemoItem extends StatelessWidget {
  final int position;
  const DemoItem({ Key? key, required this.position }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepOrange,
                  height: 40.0,
                  width: 40.0,
                ),
                const SizedBox(width: 8.0,),
                Text('Post $position'),

              ],
            ),
            const Text("GeeksforGeeks.org was created with a goal "
                    "in mind to provide well written, well "
                    "thought and well explained solutions for selected"
                    " questions. The core team of five super geeks"
                    " constituting of technology lovers and computer"
                    " science enthusiasts have been constantly working"
                    " in this direction ."),
          ],
        ),),
    );
  }
}