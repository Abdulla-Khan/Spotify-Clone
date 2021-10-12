import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const SongCard({Key? key, required this.image, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
