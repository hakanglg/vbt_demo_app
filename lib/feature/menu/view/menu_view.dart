import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:vbt_demo_app/core/base/state/base_state.dart';
import 'package:vbt_demo_app/core/components/button/text_button.dart';
import '../view_model/menu_view_model.dart';

part "menu_string_values.dart";

class MenuView extends StatelessWidget with BaseState {
  final _MenuStringValues values = _MenuStringValues();
  final MenuViewModel _model = MenuViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: playButtonSection(context)),
    );
  }

  CustomTextButton playButtonSection(BuildContext context) {
    return CustomTextButton(
        text: values.title,
        textStyle: context.textTheme.headline3!.copyWith(color: Colors.white),
        function: () => _model.goHome(context));
  }
}
