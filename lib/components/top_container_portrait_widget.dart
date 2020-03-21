import 'package:flutter/material.dart';
import 'package:responsive_size_layouts_tutorial/components/profile_image_widget.dart';
import '../size_config.dart';
import '../strings.dart';
import '../styling.dart';

class TopContainerPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(24)
          ),
          color: AppTheme.topBarBackgroundColor,
        ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(2 * SizeConfig.heightMultiplier),
              width: double.maxFinite,
              child: Column(
                children: <Widget>[
                  Expanded(
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
                            Icon(
                              Icons.blur_on,
                              size: 8 * SizeConfig.imageSizeMultiplier,
                            )
                      ],
                      ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(Strings.whatLearnToday,
                          style: Theme.of(context).textTheme.title.copyWith(fontSize: 3.5 * SizeConfig.textMultiplier),
                          ),
                          ),
                          )
                ],
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 2 * SizeConfig.heightMultiplier,
                  bottom: 2.5 * SizeConfig.heightMultiplier,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
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
                                    style: Theme.of(context).textTheme.display2.copyWith(fontSize: 2.5 * SizeConfig.textMultiplier),
                                    ),
                                  ),
                                  )                              
                            ],
                            ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 1 * SizeConfig.heightMultiplier),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(3 * SizeConfig.heightMultiplier),
                              bottomLeft: Radius.circular(3 * SizeConfig.heightMultiplier),
                            )
                            ),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 6 * SizeConfig.imageSizeMultiplier
                            ),
                        ),
                        )
                  ],
                  ),
                )
        ],
        ),
      )
      );
  }
}