import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Residence",
                      text: "India",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Coimbatore",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "22",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(
                            "https://drive.google.com/file/d/1-LE-egaGzMNQdIZrK3uTmU8EPS_d-D1i/view");
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch url');
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () async {
                              final Uri url = Uri.parse(
                                  "https://www.linkedin.com/in/selvaganapathy-kannan-b11971199/");
                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch url');
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () async {
                              final Uri url =
                                  Uri.parse("https://github.com/Ganz1285");
                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch url');
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () async {
                              final Uri url = Uri.parse(
                                  "https://leetcode.com/Selvaganapathy-258/");
                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch url');
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/leetcode.svg"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
