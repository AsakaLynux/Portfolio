import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double width;
  final Color color;
  final Function() onPressed;
  final double radius;
  final List<Widget> contain;

  const ButtonWidget({
    super.key,
    required this.width,
    required this.onPressed,
    required this.contain,
    this.color = Colors.transparent,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.radius = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 65,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(shape: const LinearBorder()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: contain,
        ),
      ),
    );
  }
}
