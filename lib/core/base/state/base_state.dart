import 'package:flutter/material.dart';
import 'package:vbt_demo_app/core/constants/border/border_constants.dart';
import 'package:vbt_demo_app/core/constants/color/color_constants.dart';

// abstract class BaseState<T extends StatefulWidget> extends State<T> {
//   ThemeData get themeData => Theme.of(context);

//   ColorConstants colorConstants = ColorConstants.instance;
//   BorderConstants borderConstants = BorderConstants.instance;
// }

abstract class BaseState {
  ColorConstants colorConstants = ColorConstants.instance;
  BorderConstants borderConstants = BorderConstants.instance;
}
