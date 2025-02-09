import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/projects.dart';
import '../../../shared/theme.dart';

class DesktopProjectsPage extends StatelessWidget {
  final double height;
  final double width;
  const DesktopProjectsPage(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    void launchUrlWeb(String webUrl) async {
      final Uri url = Uri.parse(webUrl);
      if (await canLaunchUrl(url)) await launchUrl(url);
    }

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
              itemCount: projectLists.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(right: 20, bottom: 20),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      if (kDebugMode) {
                        print("${projectLists[index].name} Pressed");
                      }
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(projectLists[index].name),
                            content: SizedBox(
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(projectLists[index].description),
                                    const SizedBox(height: 10),
                                    const Text("Technologies:"),
                                    ...projectLists[index].technologies.map(
                                      (e) {
                                        return Text(
                                          "- $e",
                                        );
                                      },
                                    )
                                  ],
                                )),
                            actions: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  textStyle:
                                      Theme.of(context).textTheme.labelLarge,
                                ),
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  textStyle:
                                      Theme.of(context).textTheme.labelLarge,
                                ),
                                child: const Text('Open project'),
                                onPressed: () =>
                                    launchUrlWeb(projectLists[index].url),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          projectLists[index].image.isNotEmpty
                              ? Image.asset(
                                  projectLists[index].image,
                                  width: 100,
                                  height: 100,
                                  color: Colors.white,
                                )
                              : const SizedBox(),
                          const SizedBox(height: 20),
                          Text(
                            projectLists[index].name,
                            style: whiteTextStylePoppins,
                          ),
                        ],
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
