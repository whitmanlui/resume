import 'package:flutter/material.dart';
import 'package:resume_flutter/constants/data.dart';
import 'package:resume_flutter/widgets/section.dart';

class RightBody extends StatefulWidget {
  RightBody() : super();

  @override
  _RightBodyState createState() => _RightBodyState();
}

class _RightBodyState extends State<RightBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(
          title: 'SKILLS & TOOLS',
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: Data.skillsAndTools.length,
            itemBuilder: (BuildContext context, int i) {
              return SkillsAndTollsSection(
                skillsAndTools: Data.skillsAndTools[i],
              );
            },
          ),
        ),
        const SizedBox(height: 30),
        Section(
          title: 'LANGUAGES',
          child: Wrap(
            direction: Axis.vertical,
            spacing: 8.0,
            children: Data.languages
                .map(
                  (e) => RichText(
                    text: TextSpan(
                      text: e.name,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      children: [
                        TextSpan(
                          text: '(${e.familiarity})',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 30),
        Section(
          title: 'INTERESTS',
          child: Wrap(
            direction: Axis.vertical,
            spacing: 8.0,
            children: Data.interests
                .map(
                  (e) => Text(
                    e,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class SkillsAndTollsSection extends StatelessWidget {
  final SkillsAndTools skillsAndTools;

  SkillsAndTollsSection({
    required this.skillsAndTools,
  });

  Widget _getBar(BuildContext context, SkillsAndToolsItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name,
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        const SizedBox(height: 2),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final lineWidget = constraints.maxWidth * (item.value / 100);
            return Row(
              children: [
                Container(
                  width: lineWidget,
                  height: 10.0,
                  color: Theme.of(context).primaryColor,
                ),
                Container(
                  width: constraints.maxWidth - lineWidget,
                  height: 10.0,
                  color: Theme.of(context).primaryColor.withOpacity(0.3),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skillsAndTools.title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 10),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: skillsAndTools.skillsAndToolsItems.length,
          itemBuilder: (BuildContext context, int i) {
            return _getBar(context, skillsAndTools.skillsAndToolsItems[i]);
          },
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
