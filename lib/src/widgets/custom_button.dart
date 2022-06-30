import 'package:custom_toast_message/src/utilies/enum/background_enum.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPressed,
      this.text,
      this.color = BackgroundColor.success})
      : super(key: key);

  final void Function()? onPressed;
  final String? text;
  final BackgroundColor color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(primary: color.getColor),
      child: Text(text ?? color.getText),
    );
  }
}
