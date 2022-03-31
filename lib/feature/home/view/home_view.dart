import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:vbt_demo_app/core/base/state/base_state.dart';
import 'package:vbt_demo_app/core/components/column/custom_column.dart';
import 'package:vbt_demo_app/core/components/row/custom_row.dart';
import '../../widgets/button/dropdown_button.dart';
import '../../../core/components/column/user_profile.dart';
import '../view_model/home_view_model.dart';

part "home_string_values.dart";

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BaseState {
// TODO: background renk değişme eklenecek
  final _HomeStringValues values = _HomeStringValues();

  final HomeViewModel _model = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    _model.init();

    return Scaffold(
      backgroundColor:
          _model.isGreen ? colorConstants.green : colorConstants.red,
      appBar: appBarSection(context),
      body: buildBodySection(),
    );
  }

  AppBar appBarSection(BuildContext context) {
    return AppBar(
        toolbarHeight: context.dynamicHeight(0.15),
        leading: infoButtonSection(context),
        actions: [CustomDropdownButton()],
        title: usersAndScoreBoardSection(context));
  }

  IconButton infoButtonSection(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.info),
        onPressed: () => _model.showDialogAndChangeTitle(context));
  }

  Row usersAndScoreBoardSection(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserProfile(
              imageUrl: _model.userList[0].imageUrl,
              name: _model.userList[0].name),
          scoreboardAndTimer(context),
          UserProfile(
              imageUrl: _model.userList[1].imageUrl,
              name: _model.userList[1].name)
        ]);
  }

  Column scoreboardAndTimer(BuildContext context) {
    return Column(
      children: [
        scoresText(context),
        context.emptySizedHeightBoxLow,
        countdownTimerText()
      ],
    );
  }

  Observer countdownTimerText() {
    return Observer(
      builder: (context) => Text(
        _model.timeLeft.toString(),
        style: context.textTheme.bodyText1,
      ),
    );
  }

  Text scoresText(BuildContext context) =>
      Text("0-0", style: context.textTheme.headline6);

  CustomColumn buildBodySection() {
    return CustomColumn(
      child: CustomRow(
        child: Column(
          children: [
            Expanded(
              child: homeTitleText(),
            ),
          ],
        ),
      ),
    );
  }

  Center homeTitleText() {
    return Center(
        child: Observer(
      builder: (context) => SingleChildScrollView(
        child: Text(
          _model.title,
          overflow: TextOverflow.fade,
          style: context.textTheme.headline4,
        ),
      ),
    ));
  }
}
