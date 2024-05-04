import 'package:flutter/material.dart';
import 'package:portfolio2/design/widget/button_widget.dart';
import 'package:portfolio2/shared/theme.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});
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
          LayoutBuilder(
            builder: (context, constraints) {
              return Align(
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
                      width: constraints.maxWidth * 0.8,
                      height: constraints.maxHeight * 0.8,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello!\nI'm Muhammad Irfansyah",
                            style: primaryTextStyleDmSans.copyWith(
                              fontSize:
                                  (constraints.maxWidth * 0.05).clamp(30, 90),
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            "I’am freelance mobile developer based in Indonesia who loves to craft attractive design experiences for the mobile.",
                            style: primaryTextStyleDmSans.copyWith(
                              fontSize:
                                  (constraints.maxWidth * 0.05).clamp(1, 20),
                            ),
                          ),
                          ButtonWidget(
                            width: 200,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "${constraints.maxWidth} x ${constraints.maxHeight}",
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
