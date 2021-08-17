import 'package:cate/core/utils/images.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;
  const Background({this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.CATeBackground),
            fit: BoxFit.cover,
          ),
        ),
      ),
      child ?? SizedBox()
    ]);
  }
}
