import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key, required this.iconData});
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(16)),
          width: 53,
          height: 40,
          child: Icon(
            iconData,
            size: 30,
          ),
        ));
  }
}
