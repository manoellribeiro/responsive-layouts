import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;

  void init(BoxConstraints constraints, Orientation orientation){
    if(orientation == Orientation.portrait){
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    _blockSizeHorizontal = _screenWidth / 100;  //Here I divided the screen in blocks, so I can measure how much blocks my text or image will occupies in any device even with different sizes.
    _blockSizeVertical = _screenHeight / 100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;

    print(_blockSizeHorizontal);
    print(_blockSizeVertical);
  }
}