import 'package:flutter/material.dart';

import '../../../model/projects.dart';
import '../../../shared/theme.dart';

class DesktopProjectsPage extends StatelessWidget {
  final double height;
  final double width;
  const DesktopProjectsPage(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Projects",
            style:
                whiteTextStylePoppins.copyWith(fontSize: 24, fontWeight: bold),
          ),
          SizedBox(
            width: width / 2,
            height: height - (height / 4),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              // scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Card(
                    color: Colors.transparent,
                    // margin: const EdgeInsets.symmetric(horizontal: 200),
                    child: Center(
                      child: Text(
                        "projectLists $index",
                        style: whiteTextStylePoppins,
                      ),
                    ),
                  ),
                );

                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 20),
                //   decoration: BoxDecoration(border: Border.all()),
                //   child: Center(
                //     child: Text(
                //       "projectLists $index",
                //       style: whiteTextStylePoppins,
                //     ),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
