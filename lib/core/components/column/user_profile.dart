import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class UserProfile extends StatelessWidget {
  final String name, imageUrl;

  const UserProfile({Key? key, required this.name, required this.imageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.1),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.contain,
          ),
        ),
        context.emptySizedHeightBoxLow,
        Text(
          name,
          style: context.textTheme.bodyText1,
        )
      ],
    );
  }
}
