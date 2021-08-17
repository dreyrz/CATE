import 'package:cate/app/widgets/fade_network_image.dart';
import 'package:cate/app/widgets/stroked_text.dart';
import 'package:flutter/material.dart';

class CatBreedCard extends StatelessWidget {
  final String url;
  const CatBreedCard({required this.url, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          FadeNetworkImage(imageUrl: url),
          StrokedText(
            "hasiudau",
          ),
        ],
      ),
    );
  }
}
