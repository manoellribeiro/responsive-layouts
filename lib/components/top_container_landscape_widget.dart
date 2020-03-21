import 'package:flutter/material.dart';
import 'package:responsive_size_layouts_tutorial/components/profile_image_widget.dart';

import '../size_config.dart';
import '../strings.dart';
import '../styling.dart';



class TopContainerLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.75,
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
          color: AppTheme.topBarBackgroundColor,
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 2 * SizeConfig.heightMultiplier,
                    right: 2 * SizeConfig.heightMultiplier,
                    top: 4.5 * SizeConfig.heightMultiplier,
                  ),
                  child: Row(
                    children: <Widget>[
                      ProfileImage(),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 1 * SizeConfig.heightMultiplier
                          ),
                          child: Text(
                            Strings.greetingMessage,
                            style: Theme.of(context).textTheme.display1.copyWith(fontSize: 2.5 * SizeConfig.textMultiplier),
                          ),
                          ),
                          ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 2 * SizeConfig.heightMultiplier),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(24),
                              )
                              ),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.search,
                                    size: 3 * SizeConfig.heightMultiplier,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 1 * SizeConfig.heightMultiplier,
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: Strings.searchHere,
                                          ),
                                          style: Theme.of(context).textTheme.display2.copyWith(fontSize: 2 * SizeConfig.textMultiplier),
                                          ),
                                      ),
                                      )
                                ],
                                ),
                          ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.blur_on,
                            size: 8 * SizeConfig.imageSizeMultiplier,
                          )
                    ],
                    ),
                  ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 2 * SizeConfig.heightMultiplier,
                        bottom: 1.5 * SizeConfig.heightMultiplier
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            Strings.whatLearnToday,
                            style: Theme.of(context).textTheme.title.copyWith(fontSize: 3 * SizeConfig.textMultiplier),
                          ),
                          Spacer(),
                          Container(
                            width: 10 * SizeConfig.heightMultiplier,
                            padding: EdgeInsets.symmetric(
                              vertical: 1 * SizeConfig.heightMultiplier
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular( 3 * SizeConfig.heightMultiplier),
                                bottomLeft: Radius.circular( 3 * SizeConfig.heightMultiplier)
                              )
                              ),
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 6 * SizeConfig.imageSizeMultiplier,
                              ),
                            )
                        ],
                        ),
                      ),
                      )
            ],),
          ),
      );
  }
}
