import 'package:cate/core/utils/adapt.dart';
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final Color? color;
  final double? height;
  const Line({this.color, this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: color ?? Theme.of(context).primaryColor,
      height: height ?? Adapt.px(1),
    );
  }
}
