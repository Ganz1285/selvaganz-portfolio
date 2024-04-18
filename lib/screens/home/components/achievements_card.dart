import 'package:flutter/material.dart';
import 'package:portfolio/models/achievements.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class AchievementsCard extends StatelessWidget {
  const AchievementsCard({
    super.key,
    required this.recommendation,
  });

  final Achievements recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(recommendation.source!),
          const SizedBox(height: defaultPadding),
             TextButton(
            onPressed: () async {
            final Uri url = Uri.parse(recommendation.url!);
                  if (!await launchUrl(url)) {
       
                  }
            },
            child: const Text(
              "View Certificate >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
