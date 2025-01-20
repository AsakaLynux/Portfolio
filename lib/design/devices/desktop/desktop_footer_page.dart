import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/theme.dart';

class DesktopFooterPage extends StatefulWidget {
  final double height;
  final double width;
  const DesktopFooterPage({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  State<DesktopFooterPage> createState() => _DesktopFooterPageState();
}

class _DesktopFooterPageState extends State<DesktopFooterPage> {
  String email = "muhammad.irfansyah26647@gmail.com";
  bool isHovered = false;
  void _launchEmail(String email) async {
    final Uri emailUrl = Uri(scheme: 'mailto', path: email);
    if (await canLaunchUrl(emailUrl)) {
      await launchUrl(emailUrl);
    } else {
      if (kDebugMode) {
        print('Could not launch $emailUrl');
      }
    }
  }

  void _launchUrl(String webUrl) async {
    final Uri url = Uri.parse(webUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      if (kDebugMode) {
        print("Could not launch $url");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget socialIcon(String image, String webUrl) {
      return InkWell(
        onTap: () => _launchUrl(webUrl),
        child: SizedBox(
          width: 25,
          height: 25,
          child: Image.asset(
            image,
            color: whiteColor,
          ),
        ),
      );
    }

    return Container(
      width: widget.width,
      height: widget.height * (2 / 4),
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.symmetric(
        horizontal: 125,
        vertical: 50,
      ),
      decoration: BoxDecoration(color: blackColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Let’s\nConnect",
                    style: whiteTextStylePoppins.copyWith(
                      fontSize: 100,
                      fontWeight: bold,
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        socialIcon("linkedin.png",
                            "https://www.linkedin.com/in/muhammad-irfansyah-955363200/"),
                        // const SizedBox(width: 20),
                        // socialIcon(
                        //     "github.png", "https://github.com/AsakaLynux"),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Muhammad Irfansyah",
                    style: whiteTextStylePoppins.copyWith(fontSize: 30),
                  ),
                  InkWell(
                    onTap: () {
                      _launchEmail(email);
                    },
                    onHover: (value) {
                      setState(() {
                        isHovered = value;
                      });
                    },
                    child: Text(
                      email,
                      style: textStylePoppins.copyWith(
                        fontSize: 30,
                        color: isHovered ? blueColor : whiteColor,
                      ),
                    ),
                  ),
                  // RichText(text: TextSpan(
                  //   text: "My Project on ",
                  //   style: whiteTextStylePoppins.copyWith(fontSize: 30),
                  //   children: [
                  //     TextSpan(
                  //       text: "Github",
                  //       onEnter: (event) {

                  //       },
                  //     )
                  //   ]
                  // ))
                  Text(
                    "My Project on Github (My laptop Rigth now can't debug the project )",
                    style: whiteTextStylePoppins.copyWith(fontSize: 30),
                  ),
                  InkWell(
                    onTap: () {
                      _launchUrl("https://github.com/AsakaLynux");
                    },
                    child: Text(
                      "Github",
                      style: textStylePoppins.copyWith(
                        fontSize: 30,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          RichText(
            text: TextSpan(
                text: "Created by ",
                style: greyTextStylePoppins.copyWith(fontSize: 20),
                children: [
                  TextSpan(
                    text: "Muhammad Irfansyah",
                    style: whiteTextStylePoppins.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  TextSpan(
                      text: " | All Reserved!",
                      style: greyTextStylePoppins.copyWith(fontSize: 20)),
                ]),
          ),
        ],
      ),
    );
  }
}
