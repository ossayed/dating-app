import 'package:flutter/material.dart';
import 'package:please/models/user_model.dart';
import 'package:please/widgets/widgets.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(user.imageUrls[0])),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.pink.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(3, 3))
                  ]),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              child: Column(
                children: [
                  Text("${user.name}, ${user.age}",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(children: [
                    UserImageSmall(image: user.imageUrls[1]),
                    UserImageSmall(image: user.imageUrls[2]), 
                    UserImageSmall(image: user.imageUrls[3]),
                    SizedBox(width: 10),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                      child: Icon(Icons.info_outline,size: 25,color: Colors.purple,)  
      
                    )
                  ])       
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





