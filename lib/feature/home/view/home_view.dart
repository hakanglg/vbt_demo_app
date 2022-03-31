import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:vbt_demo_app/core/base/state/base_state.dart';
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
      backgroundColor: _model.backgroundColor,
      appBar: AppBar(
          toolbarHeight: context.dynamicHeight(0.15),
          leading: IconButton(
              icon: Icon(Icons.info),
              onPressed: () => _model.showDialogAndChangeTitle(context)),
          actions: [CustomDropdownButton()],
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserProfile(
                  imageUrl: _model.userList[0].imageUrl,
                  name: _model.userList[0].name),
              scoreboardAndTimer(context),
              UserProfile(
                  imageUrl: _model.userList[1].imageUrl,
                  name: _model.userList[1].name),
            ],
          )),
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: Observer(
              builder: (context) => SingleChildScrollView(
                child: Text(
                  _model.title,
                  overflow: TextOverflow.fade,
                  style: context.textTheme.headline4,
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }

  Column scoreboardAndTimer(BuildContext context) {
    return Column(
      children: [
        Text("0-0", style: context.textTheme.headline6),
        context.emptySizedHeightBoxLow,
        Observer(
          builder: (context) => Text(
            _model.timeLeft.toString(),
            style: context.textTheme.bodyText1,
          ),
        )
      ],
    );
  }
}
