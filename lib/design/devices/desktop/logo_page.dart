import 'package:flutter/material.dart';

class DesktopLogoPage extends StatelessWidget {
  final double height;
  final double width;
  const DesktopLogoPage({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height / 4,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Row(
        children: [],
      ),
    );
  }
}
