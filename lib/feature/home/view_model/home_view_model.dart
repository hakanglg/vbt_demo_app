import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';
import 'package:vbt_demo_app/core/constants/color/color_constants.dart';
import '../model/home_model.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  int timeLeft = 15;

  @observable
  MaterialColor backgroundColor = ColorConstants.instance.green;

  @observable
  bool isGreen = true;

  @observable
  ObservableList<UserModel> userList = ObservableList<UserModel>.of([
    UserModel(name: "Tesla", imageUrl: "assets/images/tesla_photo.png"),
    UserModel(name: "Edison", imageUrl: "assets/images/edison_photo.jpg"),
  ]);

  @observable
  String title = "Home";

  // This function is showing the dialog and changing the title text
  @action
  showDialogAndChangeTitle(BuildContext context) {
    title = dummyText;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: SingleChildScrollView(
          child: Text(
            dummyText,
            style: context.textTheme.bodyText1,
          ),
        ),
        backgroundColor: ColorConstants.instance.black,
      ),
    );
  }

  // initial state
  @action
  void init() {
    startCountdown();
  }

  // this function is changing the background color
  @action
  void changeBackgroundColor() {
    backgroundColor =
        isGreen ? ColorConstants.instance.green : ColorConstants.instance.red;
  }

  // this function is starting the countdown
  @action
  startCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      isGreen = true;
      if (timeLeft > 0) {
        timeLeft--;
      } else {
        timer.cancel();
      }

      if (timeLeft <= 5) {
        isGreen = false;
        changeBackgroundColor();
      }
    });
  }

  final String dummyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
}
