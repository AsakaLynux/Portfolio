import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../design/interface/home_page.dart';
import '../../shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (kDebugMode) {
      print(screenSize);
    }
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
            const Column(
              children: [
                HomePage(),
              ],
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
