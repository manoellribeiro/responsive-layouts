import 'package:flutter/material.dart';
import 'package:responsive_size_layouts_tutorial/components/portrait_card_widget.dart';
import 'package:responsive_size_layouts_tutorial/components/responsive_widget.dart';
import 'package:responsive_size_layouts_tutorial/components/tabs_widget.dart';
import 'package:responsive_size_layouts_tutorial/components/top_container_landscape_widget.dart';
import 'package:responsive_size_layouts_tutorial/components/top_container_portrait_widget.dart';
import 'package:responsive_size_layouts_tutorial/size_config.dart';
import 'package:responsive_size_layouts_tutorial/styling.dart';
import '../images.dart';
import '../strings.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: AppTheme.appBackgroundColor, 
     body: SafeArea(
      bottom: false,
      left: true,
      right: true,
      top: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(3* SizeConfig.heightMultiplier),
                  ),
                ),
                constraints: BoxConstraints(maxHeight: 40 * (SizeConfig.isMobilePortrait ? SizeConfig.heightMultiplier : SizeConfig.widthMultiplier)),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    FractionallySizedBox(
                        heightFactor: SizeConfig.isMobilePortrait ? 0.3 : 0.4 ,
                        alignment: Alignment.bottomCenter,
                        child: Tabs(),
                        ),
                    ResponsiveWidget(
                      portraitLayout: TopContainerPortrait(),
                      landscapeLayout: TopContainerLandscape(),
                      ), 
                  ],
                  ),
                ),
              Container(
                constraints: BoxConstraints(maxHeight: 100 * SizeConfig.heightMultiplier),
                decoration: BoxDecoration(
                  color: AppTheme.appBackgroundColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier,
                        ),
                        child: Text(
                          Strings.popular,
                          style: Theme.of(context).textTheme.title.copyWith(fontSize: 2.5 * SizeConfig.textMultiplier),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                PortraitCard(
                                  imagePath: Images.graphicDesigner,
                                  lessonName: Strings.graphicDesigner,
                                  numberOfCourses: "234",
                                ),
                                PortraitCard(
                                  imagePath: Images.swimming,
                                  lessonName: Strings.swimming,
                                  numberOfCourses: "34",
                                )
                              ],
                              ),
                          ),),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2 * SizeConfig.widthMultiplier,
                              vertical: 1 * SizeConfig.heightMultiplier
                            ),
                            child: Text(
                              Strings.joinAWorkshop,
                              style: Theme.of(context).textTheme.title.copyWith(fontSize: 2.5 * SizeConfig.textMultiplier),
                            ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    PortraitCard(
                                      imagePath: Images.graphicDesigner,
                                      lessonName: Strings.graphicDesigner,
                                      numberOfCourses: "234",
                                    ),
                                    PortraitCard(
                                      imagePath: Images.swimming,
                                      lessonName: Strings.swimming,
                                      numberOfCourses: "34",
                                    ),
                                  ],
                                  ),
                              ),
                              )
                    ],
                    ),
                  )
          ],
          ),
      ),
      ),
    );
  }
}









