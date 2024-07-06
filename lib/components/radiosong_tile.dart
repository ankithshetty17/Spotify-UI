import 'package:flutter/material.dart';
import 'package:spotify/models/radio_songs.dart';

class RadioSongs extends StatelessWidget {
  final RadioSong radiosong;
  const RadioSongs({super.key, required this.radiosong});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(radiosong.imagepath, height: 120, width: 140),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Text(
              radiosong.songename,
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
