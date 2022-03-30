import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Placeholder(),
        actions: [Icon(Icons.menu)],
        title: Text("deneme"),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Home',
          style: context.textTheme.headline3!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
