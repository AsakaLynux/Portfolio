import 'package:flutter/material.dart';
import 'package:portfolio2/design/widget/button_widget.dart';
import 'package:portfolio2/shared/theme.dart';

class DesktopHomePage extends StatelessWidget {
  final double height;
  final double width;
  const DesktopHomePage({super.key, required this.height, required this.width});

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
                          onPressed: () {},
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
                          onPressed: () {},
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