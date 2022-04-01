import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vbt_demo_app/core/init/theme/my_theme.dart';
import 'package:vbt_demo_app/feature/home/view_model/home_view_model.dart';
import 'package:vbt_demo_app/feature/menu/view/menu_view.dart';

import 'core/constants/app/app_constants.dart';

void main() => runApp(Provider(
      create: (context) => HomeViewModel(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => const MyApp(),
      ),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      title: ApplicationConstants.APP_TITLE,
      home: MenuView(),
    );
  }
}
