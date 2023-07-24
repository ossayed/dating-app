import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UnidatesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UnidatesAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        title: Row(
          children: [
            Expanded(child: SvgPicture.asset("assets/logo.svg")),
            Expanded(child: Text("Discover")),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message, color: Colors.purple)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.person, color: Colors.purple)),
        ]);
  }
}
