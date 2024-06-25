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
  bool _isHover = false;

  // void hover() {
  //   if (kDebugMode) {
  //     print(_isHover);
  //   }
  //   setState(() {
  //     _isHover = _isHover ? false : true;
  //     // if (_select == false) {
  //     //   _select = true;
  //     // } else {
  //     //   _select = false;
  //     // }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Widget card(String text, String image) {
      return InkWell(
        onHover: (val) {
          setState(() {
            if (kDebugMode) {
              print(_isHover);
            }
            _isHover = val;
          });
        },
        child: Container(
          width: 288,
          height: 295,
          margin: const EdgeInsets.only(left: 15, right: 15),
          padding: const EdgeInsets.only(bottom: 35, left: 30),
          decoration: BoxDecoration(
            color: _isHover ? purpleColor : greyColor,
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
                  color: _isHover ? blackColor : whiteColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: textStylePoppins.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                  color: _isHover ? blackColor : whiteColor,
                ),
              ),
            ],
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
                      "Front End Developer",
                      "computer.png",
                    ),
                    card(
                      "UI/UX Designer",
                      "paint.png",
                    ),
                    card(
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
