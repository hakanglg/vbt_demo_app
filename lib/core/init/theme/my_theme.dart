import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vbt_demo_app/core/constants/color/color_constants.dart';

import '../../../feature/home/view_model/home_view_model.dart';

final ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: ColorConstants.instance.green,
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
    fontFamily: 'Press Start 2P',
    textTheme: TextTheme(
      headline3:
          TextStyle(color: ColorConstants.instance.white, fontSize: 36.sp),
      headline4:
          TextStyle(color: ColorConstants.instance.white, fontSize: 36.sp),
      headline6:
          TextStyle(color: ColorConstants.instance.white, fontSize: 20.sp),
      bodyText1:
          TextStyle(color: ColorConstants.instance.white, fontSize: 14.sp),
    ));
