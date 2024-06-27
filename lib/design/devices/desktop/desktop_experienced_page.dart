import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/shared/theme.dart';

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
  bool _isHovered = false;
  int _hoveredIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget card(int index, String text, String image) {
      return GestureDetector(
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              _hoveredIndex = index;
              if (kDebugMode) {
                print(index);
              }
            });
          },
          // onEnter: (_) => setState(() => _hoveredIndex = index),
          onExit: (_) => setState(() => _hoveredIndex = -1),
          child: Container(
            width: 288,
            height: 295,
            padding: const EdgeInsets.only(bottom: 35, left: 30),
            decoration: BoxDecoration(
              color: _hoveredIndex == index ? purpleColor : greyColor,
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
                    color: _hoveredIndex == index ? blackColor : whiteColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  text,
                  style: textStylePoppins.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                    color: _hoveredIndex == index ? blackColor : whiteColor,
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
            width: widget.width * (2 / 4),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card(
                      0,
                      "Front End Developer",
                      "computer.png",
                    ),
                    card(
                      1,
                      "UI/UX Designer",
                      "paint.png",
                    ),
                    card(
                      2,
                      "Branding Designer",
                      "thunder.png",
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
