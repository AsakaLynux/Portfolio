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
    return ListView(
      children: const [
        DesktopHomePage(),
        DesktopLogoPage(),
        DesktopExperiencedPage(),
        DesktopProjectsPage(),
        DesktopFooterPage(),
      ],
    );
  }
}
