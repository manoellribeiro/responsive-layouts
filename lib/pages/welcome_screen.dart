import 'package:flutter/material.dart';
import 'package:responsive_size_layouts_tutorial/size_config.dart';

import '../images.dart';
import '../strings.dart';
import '../styling.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.center,
                child: WelcomeContentWidget(),
                ),
              ),
              ButtonWidget()
          ],),
      ),
    );
  }
}


class WelcomeContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(top: 1.25 * SizeConfig.heightMultiplier),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FittedBox(
                child: Text(
                  Strings.welcomeScreenTitle,
                  style:  Theme.of(context).textTheme.title,
                  textAlign: TextAlign.center,
                ),
              ),
              ),
          ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 1.25 * SizeConfig.heightMultiplier),
              child: Image.asset(
                Images.homeImage,
                fit: BoxFit.fill,
                ),
              )
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.25 * SizeConfig.heightMultiplier),
                    child: Text(
                      Strings.welcomeScreenSubtitle,
                      style: Theme.of(context).textTheme.subtitle,
                      textAlign: TextAlign.center,
                      ),
                  ),
                ),
                ),
              )
      ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          constraints: BoxConstraints(
            minHeight: 9.375 * SizeConfig.heightMultiplier,
            maxHeight: 10.9375 * SizeConfig.heightMultiplier,  
            ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(4.68 * SizeConfig.heightMultiplier)),
            color: AppTheme.topBarBackgroundColor, 
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.chevron_left,
                    size: 8.33 * SizeConfig.imageSizeMultiplier,
                    ),
                  ),
                  Text(
                    Strings.getStartedButton,
                    style: Theme.of(context).textTheme.button,
                  ),
                  Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.chevron_right,
                    size: 8.33 * SizeConfig.imageSizeMultiplier,
                    ),
                  ),
              ],),
          ),
        ),
    );
  }
}