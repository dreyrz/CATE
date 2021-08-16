import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function? onPressed;
  final String? label;
  final Color? color;
  final bool loading;
  final bool disabled;
  final double? width;
  final double? height;
  final EdgeInsets margin;
  const Button(
      {required this.onPressed,
      required this.label,
      this.color,
      this.margin = EdgeInsets.zero,
      this.loading = false,
      this.disabled = false,
      this.width = 271,
      this.height = 60,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? Theme.of(context).primaryColor),
      child: TextButton(
        onPressed: loading
            ? null
            //To avoid the call of the onPressed method even with the button disabled
            : disabled
                ? null
                : onPressed as void Function()?,
        child: loading
            ? Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                        Theme.of(context).backgroundColor),
                  ),
                ),
              )
            : Text(label!, style: Theme.of(context).textTheme.button),
      ),
    );
  }
}
