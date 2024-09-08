import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key, required this.iconData, this.onPressed});
  final IconData iconData;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(16)),
          width: 53,
          height: 40,
          child: Icon(
            iconData,
            size: 30,
            color:Colors.white
          ),
        ));
  }
}
