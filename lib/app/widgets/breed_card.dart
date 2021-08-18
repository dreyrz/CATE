import 'package:cate/app/data/model/cat.dart';
import 'package:cate/app/widgets/fade_network_image.dart';
import 'package:cate/app/widgets/stroked_text.dart';
import 'package:cate/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BreedCard extends StatelessWidget {
  final Cat cat;
  const BreedCard({required this.cat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.breedInfo, arguments: cat),
      child: Stack(
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
      ),
    );
  }
}
