import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final Widget child;

  const CustomRow({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 1,
        ),
        Expanded(flex: 19,child: child),
        const Spacer(
          flex: 1,
        )
      ],
    );
  }
}
