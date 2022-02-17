import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class LottieAnimation extends StatefulWidget {
  const LottieAnimation({ Key? key }) : super(key: key);

  @override
  _LottieAnimationState createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lottie Animation'),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.green,),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_qX4zwY.json',
                height: 200,
                repeat: true,
                reverse: true,
                animate: true),
                Lottie.network(
                  'https://assets10.lottiefiles.com/temp/lf20_nXwOJj.json',
                  repeat: true,
                  reverse: false,
                  animate: true,
                ),
                  Container(
                    width: 100,
                    height: 50,
                    child: Lottie.network(
                    'https://assets5.lottiefiles.com/temp/lf20_FrIdhA.json',
                    repeat: true,
                    reverse: false,
                    animate: true,
                ),
                  ),
                Lottie.network(
                  'https://assets5.lottiefiles.com/temp/lf20_FrIdhA.json',
                  repeat: true,
                  reverse: false,
                  animate: true,
                ),
            ],
          ),
        ),
      ),
      
    );
  }
}