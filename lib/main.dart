import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vbt_demo_app/core/init/theme/light_theme.dart';
import 'package:vbt_demo_app/feature/home/view_model/home_view_model.dart';
import 'package:vbt_demo_app/feature/menu/view/menu_view.dart';

void main() => runApp(Provider(
      create: (context) => HomeViewModel(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      title: 'VBT DEMO APP',
      home: MenuView(),
    );
  }
}
