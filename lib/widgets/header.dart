import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_flutter/responsive.dart';

class Header extends StatefulWidget {
  Header() : super();

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String _name = 'WHITMAN LUI (呂鼎廉)';
  String _title = 'Technical Lead';
  String _email = 'luiwhitman@gmail.com';
  String _phoneNo = '+852 9833 4079';

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
                        _name,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        _title,
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
                          Text(_email),
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
                          Text(_phoneNo),
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

  final String _whatsapp = '9833 4079';
  final String _telegram = '@loadingLW';
  final String _github = 'whitmanlui';

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
            Text(_whatsapp),
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
            Text(_telegram),
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
            Text(_github),
          ],
        ),
      ],
    );
  }
}
