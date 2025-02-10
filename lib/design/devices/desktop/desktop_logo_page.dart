import 'package:flutter/material.dart';

import '../../../shared/dimensions.dart';

class DesktopLogoPage extends StatelessWidget {
  const DesktopLogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> skillIcon = [
      "flutter.png",
      "java.png",
      "query.png",
      "laravel.png",
      "html.png",
    ];
    return Container(
      width: screenWidth,
      height: screenHeight / 4,
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
