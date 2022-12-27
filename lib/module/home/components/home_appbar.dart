import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mynewsapp/constant/ui.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.75),
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        "My News Apps",
        style: styleTitle,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.wb_sunny_sharp,
              size: setFontSize(60),
              color: blackColor,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(setHeight(100));
}
