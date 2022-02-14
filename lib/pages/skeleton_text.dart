import "package:flutter/material.dart";
import 'package:skeleton_text/skeleton_text.dart';

class MySkeletonText extends StatelessWidget {
  const MySkeletonText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(appBar: AppBar(
        title: const Text('Skeleton Text'),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.circular(20.0)),
                color: Colors.redAccent,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SkeletonAnimation(
                    shimmerColor: Colors.black,
                    child: Container(
                      child: Image.network(
                        'https://picsum.photos/seed/image012/500/700',
                        fit: BoxFit.fill,),
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blue[300],
                    ),
                  ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(padding: const EdgeInsets.only(
                        left: 15.0,bottom: 5.0
                      ),
                      child: SkeletonAnimation(
                        child: Container(
                          height: 15,
                          width: 
                          MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.yellow[300]
                          ),
                          ),
                        ),
                        
                      ),
                      Padding(padding: 
                      const EdgeInsets.only(left: 15.0),
                      child: SkeletonAnimation(child: Container(
                        width: 60,
                        height: 13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.green,
                        ),
                      )
                      ),
                      )
                      
                    ],
                  )
                ],
            
              ),
            ),
            );
          }),
        ),
      
    );
  }
}