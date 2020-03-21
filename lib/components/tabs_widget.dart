import 'package:flutter/material.dart';

import '../size_config.dart';
import '../strings.dart';
import '../styling.dart';


class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.selectedTabBackgroundColor,
           borderRadius: BorderRadius.vertical(
             bottom: Radius.circular(3 * SizeConfig.heightMultiplier)
           ) 
          ),
          child: Align(
            alignment: Alignment(0, 0.35),
            child: Text(
              Strings.lessons,
              style: Theme.of(context).textTheme.body1,
              ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
           color: AppTheme.unSelectedTabBackgroundColor,
           borderRadius: BorderRadius.vertical(
             bottom: Radius.circular(3 * SizeConfig.heightMultiplier)
           )
          ),
          child: Align(
            alignment: Alignment(0, 0.35),
             child: Text(
               Strings.myClasses,
               style: Theme.of(context).textTheme.body1,
               ),
          ),
          ),
      ),
      ],
    );
  }
}