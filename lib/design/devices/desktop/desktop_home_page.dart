import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/design/widget/button_widget.dart';
import 'package:portfolio2/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopHomePage extends StatelessWidget {
  final double height;
  final double width;
  const DesktopHomePage({super.key, required this.height, required this.width});

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
      height: height,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          Container(
            width: width / 2,
            height: height,
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: backgroundColor,
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello!\nI’m Zarror Nibors",
                    style: whiteTextStylePlayFairDisplay.copyWith(
                      fontWeight: bold,
                      fontSize: 100,
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 404,
                    child: RichText(
                      text: TextSpan(
                        text: "I’am freelance ",
                        style: greyTextStylePoppins.copyWith(fontSize: 20),
                        children: [
                          TextSpan(
                            text: "web developer",
                            style: whiteTextStylePoppins.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                " based in Indonesia who loves to craft attractive design experiences for the web.",
                            style: greyTextStylePoppins.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: width / 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                              style: whiteTextStylePlayFairDisplay.copyWith(
                                  fontSize: 20),
                            )
                          ],
                        ),
                        ButtonWidget(
                          width: 200,
                          radius: 10,
                          onPressed: () {
                            if (kDebugMode) {
                              print("Pressed");
                            }
                          },
                          contain: [
                            Image.asset(
                              "download.png",
                              height: 20,
                              width: 20,
                            ),
                            Text(
                              "Download CV",
                              style: whiteTextStylePlayFairDisplay.copyWith(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: width / 2,
            height: height,
            margin: EdgeInsets.zero,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image.png"), fit: BoxFit.fill)),
            // child: Icon(
            //   Icons.person,
            //   size: width / 2,
            //   color: whiteColor,
            // ),
          ),
        ],
      ),
    );
  }
}
