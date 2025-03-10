import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class DesktopExperiencedPage extends StatefulWidget {
  final double height;
  final double width;
  const DesktopExperiencedPage({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  State<DesktopExperiencedPage> createState() => _DesktopExperiencedPageState();
}

class _DesktopExperiencedPageState extends State<DesktopExperiencedPage> {
  int hoveredIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget card(int index, String text, String image) {
      return GestureDetector(
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              hoveredIndex = index;
            });
          },
          // onEnter: (_) => setState(() => _hoveredIndex = index),
          onExit: (_) => setState(() => hoveredIndex = -1),
          child: Container(
            width: 288,
            height: 295,
            padding: const EdgeInsets.only(bottom: 35, left: 30),
            decoration: BoxDecoration(
              color: hoveredIndex == index ? purpleColor : greyColor,
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
                    color: hoveredIndex == index ? blackColor : whiteColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  text,
                  style: textStylePoppins.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                    color: hoveredIndex == index ? blackColor : whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      width: widget.width,
      height: widget.height / 2,
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
                  "1+",
                  style: purpleTextStylePlayFairDisplay.copyWith(
                    fontSize: 100,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  "Years Experience",
                  style: whiteTextStylePlayFairDisplay.copyWith(
                    fontSize: 40,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: widget.width * (2 / 4),
            margin: EdgeInsets.zero,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Developer and System Analyst, specialized in\nMobile Developer and Web Developer",
                  style: whiteTextStylePoppins.copyWith(
                    fontSize: 40,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card(
                      0,
                      "Front End Developer",
                      "web.png",
                    ),
                    card(
                      1,
                      "Mobile Developer",
                      "mobile.png",
                    ),
                    card(
                      2,
                      "System Analyst",
                      "computer.png",
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
