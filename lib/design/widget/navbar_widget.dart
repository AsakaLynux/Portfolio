import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/design/widget/button_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio2/shared/theme.dart';

class NavbarWidget extends StatelessWidget {
  final double height;
  final double width;
  const NavbarWidget({
    super.key,
    required this.height,
    required this.width,
  });

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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "white.png",
            width: 65,
            height: 65,
          ),
          Container(
            width: width / 4,
            margin: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                  width: 100,
                  onPressed: () {},
                  contain: [
                    Text(
                      "Home",
                      style: whiteTextStylePoppins.copyWith(fontSize: 20),
                    ),
                  ],
                ),
                ButtonWidget(
                  width: 100,
                  onPressed: () {},
                  contain: [
                    Text(
                      "About",
                      style: whiteTextStylePoppins.copyWith(fontSize: 20),
                    ),
                  ],
                ),
                ButtonWidget(
                  width: 100,
                  onPressed: () {},
                  contain: [
                    Text(
                      "Service",
                      style: whiteTextStylePoppins.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ButtonWidget(
            width: 200,
            color: blueColor,
            onPressed: () {
              _launchEmail("muhammad.irfansyah26647@gmail.com");
              if (kDebugMode) {
                print("Pressed");
              }
            },
            contain: [
              Image.asset(
                "email.png",
                height: 20,
                width: 20,
              ),
              Text(
                "Email me",
                style: whiteTextStylePlayFairDisplay.copyWith(fontSize: 20),
              )
            ],
          ),
        ],
      ),
    );
  }
}
