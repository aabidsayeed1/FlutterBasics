import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class MyHomePageMy extends StatefulWidget {
  @override
  _MyHomePageMyState createState() => _MyHomePageMyState();
}

class _MyHomePageMyState extends State<MyHomePageMy> {
  late File _image;

  Future getImagefromcamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future getImagefromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Image Picker Example -codeplayon"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Image Picker Example in Flutter -codeplayon",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: _image == null
                    ? Text("No Image is picked")
                    : Image.file(_image),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed: getImagefromcamera,
                tooltip: "Pick Image form gallery",
                child: Icon(Icons.add_a_photo),
              ),
              FloatingActionButton(
                onPressed: getImagefromGallery,
                tooltip: "Pick Image from camera",
                child: Icon(Icons.camera_alt),
              )
            ],
          )
        ],
      ),
    );
  }
}


// class GalleryAccess extends StatefulWidget {
//   const GalleryAccess({ Key? key }) : super(key: key);

//   @override
//   _GalleryAccessState createState() => _GalleryAccessState();
// }

// class _GalleryAccessState extends State<GalleryAccess> {
//   late File galleryFile;
//   @override
//   Widget build(BuildContext context) {
    
//     imageSelectorGallery() async {
//       galleryFile = await ImagePicker.pickImage(
//         source: ImageSource.gallery,);
        
        
//         setState(() {
          
//         });
//     }
//     return Scaffold(
//       appBar: AppBar(title: Text('Gallery Access'),),
//       body: Builder(
//         builder:(BuildContext context) {
          
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(onPressed: imageSelectorGallery, 
//                 child: Text('Select Image form gallery'),),
//                 SizedBox(
//                   height: 200.0,
//                   width: 300.0,
//                   child: galleryFile == null ? Center(child: Text('Sorry nothing selected!'),):
//                   Center(child: Image.file(galleryFile),),
//                 )
//               ],
//             ),
//           );
//         }) 
//     );
//   }
// }