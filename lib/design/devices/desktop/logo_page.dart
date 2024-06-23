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
    List<String> skillIcon = [
      "figma.png",
      "react.png",
      "sass.png",
      "css.png",
      "html.png",
    ];
    return Container(
      width: width,
      height: height / 4,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: skillIcon.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(left: 100, right: 100),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(skillIcon[index]))),
            );
          },
        ),
      ),
    );
  }
}
