import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? function;
  const CustomTextButton(
      {Key? key, required this.text, this.textStyle, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: AutoSizeText(text, style: textStyle),
      onPressed: function,
    );
  }
}
