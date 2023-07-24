import 'package:flutter/material.dart';

class UserImageSmall extends StatelessWidget {
  const UserImageSmall({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, right: 8),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
    );
  }
}
