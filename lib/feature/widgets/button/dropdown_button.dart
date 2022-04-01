import 'package:flutter/material.dart';
import 'package:vbt_demo_app/core/base/state/base_state.dart';

// ignore: must_be_immutable
class CustomDropdownButton extends StatelessWidget with BaseState {
  CustomDropdownButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        buildMenuItem(Icons.dangerous),
        buildMenuItem(Icons.favorite),
        buildMenuItem(Icons.ac_unit_outlined),
        buildMenuItem(Icons.access_time_filled_outlined),
        buildMenuItem(Icons.person)
      ],
    );
  }

  PopupMenuItem<dynamic> buildMenuItem(IconData icon) => PopupMenuItem(
        child: Center(
          child: Icon(
            icon,
            color: colorConstants.black,
          ),
        ),
      );
}
