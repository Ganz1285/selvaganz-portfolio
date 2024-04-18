import 'package:flutter/material.dart';
import 'package:portfolio/models/achievements.dart';
import 'package:portfolio/responsive.dart';
import '../../../constants.dart';
import 'achievements_card.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          "Achievements & Certificates",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: defaultPadding),
        const Responsive(
          mobile: AchievementsGridView(
            crossAxisCount: 1,
            childAspectRatio: 2.0,
          ),
          mobileLarge: AchievementsGridView(crossAxisCount: 2),
          tablet: AchievementsGridView(childAspectRatio: 1.8),
          desktop: AchievementsGridView(),
        ),
      ],
    );
  }
}

class AchievementsGridView extends StatelessWidget {
  const AchievementsGridView({
    super.key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 4.0,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demo_recommendations.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => AchievementsCard(
        recommendation: demo_recommendations[index],
      ),
    );
  }
}