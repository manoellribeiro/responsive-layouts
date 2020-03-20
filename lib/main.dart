import 'package:flutter/material.dart';
import 'package:responsive_size_layouts_tutorial/pages/welcome_screen.dart';
import 'package:responsive_size_layouts_tutorial/size_config.dart';
import 'package:responsive_size_layouts_tutorial/styling.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        return OrientationBuilder(
          builder: (context, orientation){
            SizeConfig().init(constraints, orientation); 
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: AppTheme.lightTheme,
              home: WelcomeScreen(),
        );
      }, 
     );
    });
  }
}

