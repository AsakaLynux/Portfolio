import 'package:flutter/material.dart';
import 'package:portfolio2/design/devices/desktop/experienced_page.dart';
import 'package:portfolio2/design/devices/desktop/home_page.dart';
import 'package:portfolio2/design/devices/desktop/logo_page.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        DesktopHomePage(width: width, height: height),
        DesktopLogoPage(width: width, height: height),
        DesktopExperiencedPage(width: width, height: height),
      ],
    );
  }
}
