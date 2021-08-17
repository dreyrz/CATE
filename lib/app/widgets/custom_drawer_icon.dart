import 'package:cate/core/utils/adapt.dart';
import 'package:flutter/material.dart';

class CustomDrawerIcon extends StatelessWidget {
  const CustomDrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.dehaze,
        size: Adapt.px(36),
      ),
      onPressed: () => Scaffold.of(context).openEndDrawer(),
      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
    );
  }
}
