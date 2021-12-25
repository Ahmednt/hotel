import 'package:flutter/material.dart';
import 'package:webiste_hostel_app/models/recommendations.dart';

import '../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: Colors.black26,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: TextStyle(color: Colors.deepOrangeAccent),
            ),
            subtitle: Text(
              recommendation.soure!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            demoRecommendations[0].text!,
            maxLines: 4,
            style: TextStyle(height: 1.4),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
