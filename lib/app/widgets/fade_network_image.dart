import 'package:cate/core/utils/adapt.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeNetworkImage extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  FadeNetworkImage(
      {required this.imageUrl,
      this.height = double.infinity,
      this.width = double.infinity});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Adapt.px(4)),
      child: SizedBox(
        height: height,
        width: width,
        child: FadeInImage.memoryNetwork(
          fit: BoxFit.fill,
          placeholder: kTransparentImage,
          image: imageUrl,
        ),
      ),
    );
  }
}
