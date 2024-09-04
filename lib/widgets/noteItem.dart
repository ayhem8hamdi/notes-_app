import 'package:flutter/material.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 7),
      height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFFCC80)),
      margin: const EdgeInsets.only(right: 10, left: 10, top: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
            subtitle: const SizedBox(
              height: 74.7,
              child: Padding(
                padding: EdgeInsets.only(top: 12, bottom: 15),
                child: Text(
                  'Build your career with mugiwara',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black45,
                      fontSize: 17,
                      overflow: TextOverflow.ellipsis),
                  maxLines: 2,
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 39,
                  color: Colors.black,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 25, bottom: 15),
            child: Text(
              'August 29,2024',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
