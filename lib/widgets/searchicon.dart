import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(8)),
          width: 53,
          height: 40,
          child: const Icon(
            Icons.search,
            size: 30,
          ),
        ));
  }
}
