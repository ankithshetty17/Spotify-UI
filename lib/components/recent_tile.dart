import 'package:flutter/material.dart';
import 'package:spotify/models/recent_albumlist.dart';

class RecentTile extends StatelessWidget {
  final Album album;
  final void Function()? onTap;
  const RecentTile({super.key, required this.album,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child:
    Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(album.imagepath, height: 120, width: 120),
          const SizedBox(
            height: 10,
          ),
          Text(album.title),
        ],
      ),
    ),
    );
  }
}
