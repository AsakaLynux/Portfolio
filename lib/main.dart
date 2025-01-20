import 'package:flutter/material.dart';
import './responsive_layout.dart';
import '../../shared/theme.dart';
import 'design/devices/desktop/desktop_page.dart';
import 'design/devices/mobile/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: backgroundColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            const ResponsiveLayout(
              desktopBody: DesktopPage(),
              mobileBody: MobileHomePage(),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "${screenSize.width} x ${screenSize.height}",
                style: const TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
