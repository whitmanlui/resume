import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_flutter/constants/data.dart';
import 'package:resume_flutter/responsive.dart';
import 'package:resume_flutter/widgets/section.dart';
import 'package:resume_flutter/widgets/work_experience_section.dart';

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
