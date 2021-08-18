import 'package:cate/core/utils/adapt.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeNetworkImage extends StatelessWidget {
  final imageUrl;
  FadeNetworkImage({@required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Adapt.px(4)),
      child: SizedBox(
        // height: Adapt.px(150),
        width: double.infinity,
        height: double.infinity,
        child: FadeInImage.memoryNetwork(
          fit: BoxFit.fill,
          placeholder: kTransparentImage,
          image: imageUrl,
        ),
      ),
    );
  }
}
