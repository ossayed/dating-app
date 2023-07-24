import 'package:flutter/material.dart';
import 'package:please/models/user_model.dart';
import 'package:please/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/bin/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => HomeScreen());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UnidatesAppBar(),
      body:Column(
        children: [
          Draggable(
             child:UserCard(user: User.users[0]), 
            feedback: UserCard(user: User.users[0]),
            childWhenDragging: UserCard(user: User.users[1]),
            onDragEnd: (drag){
              if(drag.velocity.pixelsPerSecond.dx < 0){
                print("left");
              }
              else if(drag.velocity.pixelsPerSecond.dx > 0) {
                print("right");
              }
              else{
                print("something has gone seriously wrong");
              }

            },),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 60),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                likeButton(height: 60, width: 60, size: 25, color: Colors.purple, icon: Icons.clear_rounded),
                likeButton(height: 60, width: 60, size: 25, color: Colors.purple, icon: Icons.clear_rounded),
                likeButton(height: 60, width: 60, size: 30, color: Colors.purple, icon: Icons.favorite)
              ])
          )],

      )
    );
  }
}

