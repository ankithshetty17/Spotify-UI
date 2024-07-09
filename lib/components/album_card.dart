import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String albumName;
  final String imagepath;
  const AlbumCard(
      {super.key, required this.albumName, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white10),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image.asset(
              imagepath,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 10),
            Text(albumName),
          ],
        ),
      ),
    );
  }
}


class AlbumPanel extends StatelessWidget {
  final String albumName;
  final String imagepath;
  const AlbumPanel(
      {super.key, required this.albumName, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),),   
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagepath,
              fit: BoxFit.cover,
              
            ),
            const SizedBox(height: 10),
            Text(albumName,style: Theme.of(context).textTheme.caption,),
          ],
        ),
      ),
    );
  }
}