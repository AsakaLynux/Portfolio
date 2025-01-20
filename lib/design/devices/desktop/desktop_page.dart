import 'package:flutter/material.dart';

import 'desktop_experienced_page.dart';
import 'desktop_footer_page.dart';
import 'desktop_home_page.dart';
import 'desktop_logo_page.dart';
import 'desktop_projects_page.dart';

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
        DesktopProjectsPage(width: width, height: height),
        DesktopFooterPage(width: width, height: height),
      ],
    );
  }
}
