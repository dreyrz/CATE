import 'package:cate/app/data/model/cat.dart';
import 'package:cate/app/widgets/fade_network_image.dart';
import 'package:cate/app/widgets/stroked_text.dart';

import 'package:flutter/material.dart';

class CatBreedCard extends StatelessWidget {
  final Cat cat;
  const CatBreedCard({required this.cat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeNetworkImage(imageUrl: cat.imageUrl),
        Positioned.fill(
          child: Container(
            // color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StrokedText(
                  cat.name,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
