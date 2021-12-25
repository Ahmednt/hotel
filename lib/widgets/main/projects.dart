import 'package:flutter/material.dart';
import 'package:webiste_hostel_app/constants.dart';
import 'package:webiste_hostel_app/models/projects.dart';
import 'package:webiste_hostel_app/responsive.dart';
import 'package:webiste_hostel_app/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'List Projects REC Hotels  ',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          desktop: buildGridView(
            itemCount: demoProject.length,
            crossAxisCount: 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCard(project: demoProject[index]),
          ),
          tablet: buildGridView(
            itemCount: demoProject.length,
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCard(project: demoProject[index]),
          ),
          mobileLarge: buildGridView(
            itemCount: demoProject.length,
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCard(project: demoProject[index]),
          ),
          mobile: buildGridView(
            itemCount: demoProject.length,
            crossAxisCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCard(project: demoProject[index]),
          ),
        )
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding),
        itemBuilder: itemBuilder);
  }
}
