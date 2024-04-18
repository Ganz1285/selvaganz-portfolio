import 'package:flutter/material.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key,
    required this.project,
  });

  final Experience project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                project.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(project.company!.title!),
                  Container(
                    height: 40,
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(project.company!.logo!))),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Text(
            "${project.company!.duration!}, ${project.company!.location!}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          Row(
            children: [
              TextButton(
                onPressed: () async {
                  final Uri url = Uri.parse(project.company!.url!);
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch ${project.company!.url!}');
                  }
                },
                child: const Text(
                  "Visit Company >>",
                  style: TextStyle(color: primaryColor),
                ),
              ),
               TextButton(
            onPressed: () async {
        
            },
            child: const Text(
              "View Certificate >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
            ],
          ),
        ],
      ),
    );
  }
}
