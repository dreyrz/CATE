import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int weight;

  final Color? color;
  const CustomText(this.text, {this.weight = 1, this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Text(
      text,
      textAlign: TextAlign.center,
      style: (weight == 4
              ? textTheme.headline4
              : weight == 3
                  ? textTheme.headline3
                  : weight == 2
                      ? textTheme.headline2
                      : textTheme.headline1)!
          .copyWith(
        color: color ?? theme.accentColor,
      ),
    );
  }
}
