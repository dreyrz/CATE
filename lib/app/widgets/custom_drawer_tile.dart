import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomDrawerTile extends StatelessWidget {
  final Function onTap;
  final bool selected;
  final String label;
  const CustomDrawerTile(
      {required this.selected,
      required this.label,
      required this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap as void Function(),
      child: CustomText(
        label,
        fontSize: 20,
        color: selected
            ? Theme.of(context).primaryColor
            : Theme.of(context).accentColor,
      ),
    );
  }
}
