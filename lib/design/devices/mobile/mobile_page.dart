import 'package:flutter/material.dart';

import 'mobile_home_page.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SingleChildScrollView(
      child: Column(
        children: [MobileHomePage(height: height, width: width)],
      ),
    );
  }
}
