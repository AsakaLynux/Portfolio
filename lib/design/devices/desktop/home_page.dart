import 'package:flutter/material.dart';
import 'package:portfolio2/design/widget/button_widget.dart';
import 'package:portfolio2/shared/theme.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: width / 2,
                height: height,
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Container(
                width: width / 2,
                height: height,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    image:
                        const DecorationImage(image: AssetImage("profil.png"))),
                // child: Icon(
                //   Icons.person,
                //   size: width / 2,
                //   color: whiteColor,
                // ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(
              children: [
                Container(
                  // margin: const EdgeInsets.only(
                  //   left: 118,
                  //   top: 175,
                  //   right: 588,
                  //   bottom: 140,
                  // ),

                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello!\nI'm Muhammad Irfansyah",
                        style: primaryTextStyleDmSans.copyWith(
                          fontWeight: bold,
                          fontSize: 90,
                        ),
                      ),
                      SizedBox(
                        width: 404,
                        child: Text(
                          "I’am freelance mobile developer based in Indonesia who loves to craft attractive design experiences for the mobile.",
                          style: primaryTextStyleDmSans.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
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
                                style: primaryTextStyleDmSans.copyWith(
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
                                style: primaryTextStyleDmSans.copyWith(
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
