import 'package:flutter/material.dart';
import 'package:spotify/models/recent_songs.dart';

class RecentSongs extends StatelessWidget {
  final Songs songs;
  const RecentSongs({super.key, required this.songs});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(songs.imagepath, height: 120, width: 140),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Text(
              songs.songename,
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
