import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';


class PhysicsCardDragDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text('Physics Animation'),
      backgroundColor: Colors.green,),
      body: DraggableCard(
        child:Container(
          padding: EdgeInsets.all(50),
          child: Text(' Aabid'),
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.green
          ),
        )
      ),
    );
  }
}
class DraggableCard extends StatefulWidget {
   final Widget child;
   DraggableCard({required this.child});

  @override
  _DraggableCardState createState() => _DraggableCardState();
}


class _DraggableCardState extends State<DraggableCard> with SingleTickerProviderStateMixin{
  
  late AnimationController _controller;

  Alignment _dragAligment =Alignment.center;

  late Animation <Alignment> _animation;
  
  
  void _runAnimation(Offset pixelsPerSecond, Size size){
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAligment,
        end: Alignment.center,
      )
    );

    // evaluating velocity
    
    final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(mass: 30, stiffness: 1, damping: 1);

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

    _controller.animateWith(simulation);

  

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addListener(() {
      setState(() {
        _dragAligment = _animation.value;
      });
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();

  }
     @override
      Widget build(BuildContext context){

        final size = MediaQuery.of(context).size;
        
        return GestureDetector(
          onPanDown: (details) => _controller.stop(),
          onPanUpdate: (details) {
            setState(() {
              _dragAligment += Alignment(
                details.delta.dx /(size.width /2),
                 details.delta.dy/(size.height/2),);

            });
          },
          onPanEnd: (details){
            _runAnimation(details.velocity.pixelsPerSecond, size);
          },
          child: Align(alignment: _dragAligment,
          child: Card(
            child:  widget.child,
          ),
          ),
        );
      }

}