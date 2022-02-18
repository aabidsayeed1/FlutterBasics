import 'package:flutter/material.dart';


class MyHomepage extends StatefulWidget {
 

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit(){
    final isValid = _formKey.currentState?.validate();
   
    if (!isValid!){
      return;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
        leading:  Icon(Icons.filter_vintage),
      ),
      body: Padding(padding: 
      const EdgeInsets.all(16.0),
      child: Form(
         key: _formKey,
        child:  Column(
          children: [
            Text("Form-Validation in Flutter",
            style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width *0.1,
            ),
            Card(
              color: Colors.blue,
              elevation: 12,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              child: TextFormField(
                decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                  
                  labelText: 'E-Mail'
                 ),
                 keyboardType: TextInputType.emailAddress,
                 onFieldSubmitted: (value){
            
                 },
                 validator: (value){
                   if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
            
                 },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width*0.1,
            ),
            Card(
              color: Colors.blue,
              elevation: 12,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              child: TextFormField(
                decoration: InputDecoration(
                   contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Password'
                ),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value){
                  
                },
                obscureText: true,
                validator: (value){
                  if (value!.isEmpty){
                    return 'Enter your valid Password';
                  }return null;
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
              child: ElevatedButton(
                
                onPressed: (){
                return _submit();
              }, child: Text("submit",style:  TextStyle(fontSize: 24.0,),)),
            )
          ],
        )
     ),),
      
    );
  }
}