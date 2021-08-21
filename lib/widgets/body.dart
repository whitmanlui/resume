import 'package:flutter/material.dart';
import 'package:resume_flutter/constants/data.dart';
import 'package:resume_flutter/widgets/section.dart';

class Body extends StatefulWidget {
  Body() : super();

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'WORK EXPERIENCE',
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Data.workExperiences.length,
        itemBuilder: (BuildContext context, int i) {
          return WorkExperienceSection(
            item: Data.workExperiences[i],
          );
        },
      ),
    );
  }
}

class WorkExperienceSection extends StatelessWidget {
  final WorkExperience item;

  WorkExperienceSection({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.companyName,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
