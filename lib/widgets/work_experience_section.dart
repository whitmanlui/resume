import 'package:flutter/material.dart';
import 'package:resume_flutter/constants/data.dart';

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
