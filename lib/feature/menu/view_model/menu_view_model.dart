import 'package:flutter/material.dart';

import '../../home/view/home_view.dart';

class MenuViewModel {
  // INFO: This function is navigate to the HomeView and doesn't allow to go back
  void goHome(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ),
        (route) => false);
  }
}
