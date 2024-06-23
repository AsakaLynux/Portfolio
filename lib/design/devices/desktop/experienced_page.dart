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
    Widget card() {
      return Container(
        width: 288,
        height: 295,
        margin: const EdgeInsets.only(left: 15, right: 15),
        padding: const EdgeInsets.only(bottom: 35, left: 30),
        decoration: BoxDecoration(
          color: greyColor,
          border: Border.all(color: whiteColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                'computer.png',
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Front End Developer",
              style: blackTextStylePoppins.copyWith(
                fontSize: 20,
                fontWeight: bold,
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
        crossAxisAlignment: CrossAxisAlignment.center,
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
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: Column(
              children: [
                Text(
                  "Developer and Designer, specialized in UI/UX and Web Developer",
                  style: whiteTextStylePoppins.copyWith(
                    fontSize: 40,
                    fontWeight: bold,
                  ),
                ),
                Row(
                  children: [
                    card(),
                    card(),
                    card(),
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
