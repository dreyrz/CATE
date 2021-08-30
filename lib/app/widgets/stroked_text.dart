import 'package:flutter/material.dart';

class StrokedText extends StatelessWidget {
  final String text;
  const StrokedText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Theme.of(context).primaryColor)),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    );
  }
}
