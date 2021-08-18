import 'package:cate/app/data/model/cat.dart';
import 'package:cate/app/widgets/skill_level.dart';
import 'package:cate/core/utils/adapt.dart';
import 'package:cate/core/utils/strings.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final Cat cat;
  const Skills({required this.cat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Adapt.px(30)),
      child: Column(
        children: [
          SkillLevel(label: Strings.adaptability, level: cat.adaptability),
          SkillLevel(label: Strings.affectionLevel, level: cat.affectionLevel),
          SkillLevel(label: Strings.childFriendly, level: cat.childFriendly),
          SkillLevel(label: Strings.grooming, level: cat.grooming),
          SkillLevel(label: Strings.intelligence, level: cat.intelligence),
          SkillLevel(label: Strings.healthIssues, level: cat.healthIssues),
          SkillLevel(label: Strings.socialNeeds, level: cat.socialNeeds),
          SkillLevel(
              label: Strings.strangeFriendly, level: cat.strangerFriendly),
        ],
      ),
    );
  }
}
