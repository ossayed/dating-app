import 'package:flutter/material.dart';

class likeButton extends StatelessWidget {
  final double height; 
  final double width;
  final double size;
  final Color color;
  final IconData icon;

  const  likeButton({
    super.key,
    required this.height,
    required this.width,
    required this.size,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow:[BoxShadow(
          color: Colors.grey,
          spreadRadius: 4,
          blurRadius: 4,
          offset: Offset(3, 3)
        )
        ]),
      child: Icon(icon,color: color),
    );
  }
}
