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
  void _launchUrl(String webUrl) async {
    final Uri url = Uri.parse(webUrl);
    if (await canLaunchUrl(url)) await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    Widget socialIcon(String image, String webUrl) {
      return InkWell(
        onTap: () => _launchUrl(webUrl),
        child: SizedBox(
          width: 50,
          height: 50,
          child: Image.asset(
            image,
            color: whiteColor,
          ),
        ),
      );
    }

    return Container(
      width: widget.width,
      height: widget.height / 3,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.symmetric(
        horizontal: 125,
        vertical: 50,
      ),
      color: blackColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Let’s Connect",
            style: whiteTextStylePoppins.copyWith(
              fontSize: 100,
              fontWeight: bold,
              height: 1,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialIcon("linkedin.png",
                  "https://www.linkedin.com/in/muhammad-irfansyah-955363200/"),
              const SizedBox(width: 20),
              socialIcon("github.png", "https://github.com/AsakaLynux"),
            ],
          ),
          //
        ],
      ),
    );
  }
}
