import 'package:flutter/material.dart';
import 'package:webiste_hostel_app/constants.dart';
import 'package:webiste_hostel_app/models/recommendations.dart';
import 'package:webiste_hostel_app/widgets/main/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Opinion of Tourists:',
              style: Theme.of(context).textTheme.headline6),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: RecommendationCard(
                    recommendation: demoRecommendations[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
