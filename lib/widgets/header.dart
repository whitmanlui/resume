import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_flutter/constants/data.dart';
import 'package:resume_flutter/responsive.dart';

class Header extends StatefulWidget {
  Header() : super();

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!Responsive.isMobileLarge(context)) Logo(),
        Expanded(
          child: Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (Responsive.isMobileLarge(context)) ...[
                        Center(
                          child: Logo(),
                        ),
                        const SizedBox(height: 20),
                      ],
                      Text(
                        Data.name,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        Data.workExperiences.first.title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 20,
                            child: Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(Data.email),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 20,
                            child: FaIcon(
                              FontAwesomeIcons.mobileAlt,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(Data.phoneNo),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 20,
                            child: FaIcon(
                              FontAwesomeIcons.link,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(Data.website),
                        ],
                      ),
                      if (Responsive.isMobileLarge(context)) ...[
                        const SizedBox(height: 10),
                        ContextBlock(),
                      ]
                    ],
                  ),
                ),
                if (!Responsive.isMobileLarge(context)) ContextBlock(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  Logo();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('assets/images/logo.jpeg'),
      ),
    );
  }
}

class ContextBlock extends StatelessWidget {
  ContextBlock();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              child: FaIcon(
                FontAwesomeIcons.whatsapp,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 5),
            Text(Data.whatsapp),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              child: FaIcon(
                FontAwesomeIcons.telegram,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 5),
            Text(Data.telegram),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              child: FaIcon(
                FontAwesomeIcons.github,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 5),
            Text(Data.github),
          ],
        ),
      ],
    );
  }
}
