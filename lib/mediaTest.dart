import 'package:flutter/material.dart';

import './extensions.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  static late double safeAreaHorizontal;
  static late double safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;
  static late double safeBlockVerticalWithAppBar;
  static late double safeBlockVerticalWithOutAppBar;
  static late bool isPortrait;
  static late bool isLandscape;

  void init(BuildContext context) {
    screenWidth = context.width;

    screenHeight = context.height;

    blockSizeHorizontal = screenWidth / 100;

    blockSizeVertical = screenHeight / 100;

    safeAreaHorizontal = context.padding.left + context.padding.right;

    safeAreaVertical = context.padding.top + context.padding.bottom;

    safeBlockHorizontal = (screenWidth - safeAreaHorizontal) / 100;

    safeBlockVertical = (screenHeight - safeAreaVertical) / 100;

    /// you need to divided py 100  to use ===> (safeBlockVerticalWithAppBar/100)

    safeBlockVerticalWithAppBar =
        (screenHeight - safeAreaVertical - AppBar().preferredSize.height) / 100;

    safeBlockVerticalWithOutAppBar =
        (screenHeight - safeAreaVertical - 0) / 100;

    isPortrait = context.portrait;

    isLandscape = context.landscape;

    print('screenWidth =>>> $screenWidth -  $blockSizeHorizontal');
    print('screenHeight =>>> $screenHeight  -  $blockSizeVertical');
    print('padding top =>>> ${context.padding.top}');
    print('padding bottom =>>> ${context.padding.bottom}');
    print('safeAreaVertical =>>> $safeAreaVertical');
    print('safeAreaHorizontal =>>> $safeAreaHorizontal');
    print('AppBar height =>>>  ${AppBar().preferredSize.height}');
    print(
        'safeBlockVerticalWithOutAppBar  =>>> $safeBlockVerticalWithOutAppBar');
    print('safeBlockVerticalWithAppBar =>>>  $safeBlockVerticalWithAppBar');
    print('Screen is portrait =>>>  $isPortrait');
    print('Screen is landscape =>>>  $isLandscape');
  }
}
