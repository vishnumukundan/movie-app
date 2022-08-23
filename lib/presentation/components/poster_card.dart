import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';

class PosterCard__widget extends StatelessWidget {
  const PosterCard__widget({
    Key? key,
    required this.image,
    this.onTap,
  }) : super(key: key);

  final image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 10 / 16,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
