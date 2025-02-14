// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/theme.dart';
import '../../widget/button_widget.dart';

class DesktopHomePage extends StatelessWidget {
  final double height;
  final double width;
  const DesktopHomePage({
    super.key,
    required this.height,
    required this.width,
  });

  void launchEmail(String email) async {
    final Uri emailUrl = Uri(scheme: 'mailto', path: email);
    if (await canLaunchUrl(emailUrl)) {
      await launchUrl(emailUrl);
    } else {
      if (kDebugMode) {
        print('Could not launch $emailUrl');
      }
    }
  }

  Future<void> downloadFile() async {
    ByteData data = await rootBundle.load('CV.pdf');
    final blob = html.Blob([data.buffer.asUint8List()]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    html.AnchorElement(href: url)
      ..setAttribute("download", "CV - Muhammad Irfansyah.pdf")
      ..click();
    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Container(
        // width: width / 2,
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
                "Hello!\nI’m Muhammad Irfansyah",
                style: whiteTextStylePlayFairDisplay.copyWith(
                  fontWeight: bold,
                  fontSize: width * 0.05,
                  height: 1,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 404,
                child: RichText(
                  text: TextSpan(
                    text: "I'm fresh gradate ",
                    style: greyTextStylePoppins.copyWith(fontSize: 20),
                    children: [
                      TextSpan(
                        text: "Computer Science",
                        style: whiteTextStylePoppins.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            " based in Indonesia who loves to craft attractive design experiences for the web and mobile.",
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
                        launchEmail("muhammad.irfansyah26647@gmail.com");
                        if (kDebugMode) {
                          print("Email Pressed");
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
                      onPressed: () {
                        downloadFile();
                        if (kDebugMode) {
                          print("Download file");
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
    );
  }
}
