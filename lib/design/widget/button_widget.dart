import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ButtonWidget extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double width;
  final Function() onPressed;

  const ButtonWidget({
    super.key,
    required this.width,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 65,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "email.png",
              height: 20,
              width: 20,
            ),
            Text(
              "Email me",
              style: primaryTextStyleDmSans.copyWith(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
