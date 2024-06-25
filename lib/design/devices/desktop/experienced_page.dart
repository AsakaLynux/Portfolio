import 'package:flutter/material.dart';
import 'package:portfolio2/shared/theme.dart';

class DesktopExperiencedPage extends StatelessWidget {
  final double height;
  final double width;
  const DesktopExperiencedPage({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    Widget card(Color backgroundColor, String text, String image, Color color) {
      return Container(
        width: 288,
        height: 295,
        margin: const EdgeInsets.only(left: 15, right: 15),
        padding: const EdgeInsets.only(bottom: 35, left: 30),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                image,
                color: color,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: textStylePoppins.copyWith(
                fontSize: 20,
                fontWeight: bold,
                color: color,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      width: width,
      height: height / 2,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 207,
            height: 336,
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                Text(
                  "4+",
                  style: purpleTextStylePlayFairDisplay.copyWith(
                    fontSize: 100,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  "Years Experience Working",
                  style: whiteTextStylePlayFairDisplay.copyWith(
                    fontSize: 40,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.zero,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Developer and Designer, specialized in\nUI/UX and Web Developer",
                  style: whiteTextStylePoppins.copyWith(
                    fontSize: 40,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    card(
                      purpleColor,
                      "Front End Developer",
                      "computer.png",
                      whiteColor,
                    ),
                    card(
                      greyColor,
                      "UI/UX Designer",
                      "paint.png",
                      blackColor,
                    ),
                    card(
                      greyColor,
                      "Branding Designer",
                      "thunder.png",
                      blackColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
