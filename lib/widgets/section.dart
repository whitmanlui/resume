import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final Widget child;
  Section({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
        ),
        child,
      ],
    );
  }
}
