import 'package:cate/core/utils/adapt.dart';
import 'package:cate/core/utils/strings.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: Strings.search,
        prefixIcon: Icon(
          Icons.search,
          color: Theme.of(context).shadowColor,
        ),
        fillColor: Theme.of(context).accentColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Adapt.px(5)),
        ),
      ),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
