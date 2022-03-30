import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/column/user_profile.dart';
import '../view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
// TODO: Home string values eklenecek
// TODO: Dropdown menu eklenecek
// TODO: Geri Sayım eklenecek

  final HomeViewModel _model = HomeViewModel();
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: context.dynamicHeight(0.15),
          leading: IconButton(
            icon: Icon(Icons.info),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {},
            ),
            // DropdownButton(
            //   dropdownColor: Colors.red,
            //   items: <String>['One', 'Two', 'Free', 'Four']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: dropdownValue,
            //       child: Text(value),
            //     );
            //   }).toList(),
            //   icon: const Icon(Icons.arrow_downward),
            //   onChanged: (String? newValue) {
            //     dropdownValue = newValue!;
            //   },
            // )
          ],
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
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Home',
          style: context.textTheme.headline3!.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Column scoreboardAndTimer(BuildContext context) {
    return Column(
      children: [
        Text("0-0", style: context.textTheme.headline6),
        context.emptySizedHeightBoxLow,
        Text(
          "14:59.6",
          style: context.textTheme.bodyText1,
        ),
      ],
    );
  }
}
