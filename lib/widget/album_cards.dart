import 'package:flutter/material.dart';

class Albumcard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final VoidCallback onTap;
  const Albumcard({
    Key? key,
    required this.image,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(label),
        ],
      ),
    );
  }
}
