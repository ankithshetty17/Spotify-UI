import 'package:flutter/material.dart';
import 'package:spotify/models/recent_albumlist.dart';

class RecentTile extends StatelessWidget {
  final Album album;
  const RecentTile({super.key,required this.album});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin:const  EdgeInsets.symmetric(horizontal: 10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       Image.asset(album.imagepath,height: 120,width: 120),
       const SizedBox(height: 10,),
       Text(album.title),
        ],
      ),
    );
  }
}