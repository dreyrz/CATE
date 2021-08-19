import 'package:cate/app/widgets/custom_text.dart';
import 'package:cate/core/utils/adapt.dart';
import 'package:flutter/material.dart';

class SkillLevel extends StatefulWidget {
  final String label;
  final int level;
  const SkillLevel({
    required this.label,
    required this.level,
    Key? key,
  }) : super(key: key);

  @override
  _SkillLevelState createState() => _SkillLevelState();
}

class _SkillLevelState extends State<SkillLevel> {
  List<Widget> getLevels(BuildContext context) {
    List<Widget> highlighted = [];
    List<Widget> unhighlighted = [];

    highlighted.add(CustomText(
      widget.label,
      weight: 3,
    ));

    highlighted.add(SizedBox(
      width: Adapt.wp(6),
    ));
    highlighted.addAll(
      List.generate(
        widget.level,
        (index) => Container(
          margin: EdgeInsets.only(right: Adapt.wp(1)),
          height: 10,
          width: 23,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(
              Adapt.px(10),
            ),
          ),
        ),
      ),
    );

    unhighlighted.addAll(
      List.generate(
        5 - widget.level,
        (index) => Container(
          margin: EdgeInsets.only(right: Adapt.wp(1)),
          height: 10,
          width: 23,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(
              Adapt.px(10),
            ),
          ),
        ),
      ),
    );
    unhighlighted.add(SizedBox(
      width: Adapt.wp(1),
    ));
    return highlighted + unhighlighted;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Adapt.px(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: getLevels(context),
      ),
    );
  }
}
