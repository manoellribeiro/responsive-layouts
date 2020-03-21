import 'package:flutter/material.dart';

import '../size_config.dart';


class PortraitCard extends StatelessWidget {
  
  final String imagePath, lessonName, numberOfCourses;

  const PortraitCard({Key key, this.imagePath, this.lessonName, this.numberOfCourses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 40 * SizeConfig.heightMultiplier,
        minHeight: 35 * SizeConfig.heightMultiplier,
        ),
        margin: EdgeInsets.symmetric(horizontal: 3 * SizeConfig.widthMultiplier),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(3 * SizeConfig.heightMultiplier),
          ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(3 * SizeConfig.heightMultiplier),
                  ),
                  child: AspectRatio(
                    aspectRatio: 0.8,
                    child: Image.asset(imagePath,
                    fit: BoxFit.fitHeight
                    ),
                    ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.all(2 * SizeConfig.widthMultiplier),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      lessonName,
                      style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$numberOfCourses Courses',
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                  ],
                  ),
                )
            ],
            ),
    );
  }
}