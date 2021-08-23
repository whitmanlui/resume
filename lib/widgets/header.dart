import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_flutter/constants/data.dart';
import 'package:resume_flutter/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

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
                      Link(
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 20,
                        ),
                        text: Data.email,
                        url: 'mailto:${Data.email}',
                      ),
                      const SizedBox(height: 10),
                      Link(
                        icon: FaIcon(
                          FontAwesomeIcons.mobileAlt,
                          color: Colors.white,
                          size: 20,
                        ),
                        text: Data.phoneNo,
                        url: 'tel:${Data.phoneNo}',
                      ),
                      const SizedBox(height: 10),
                      Link(
                        icon: FaIcon(
                          FontAwesomeIcons.link,
                          color: Colors.white,
                          size: 16,
                        ),
                        text: Data.website,
                        url: Data.website,
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
        image: AssetImage('assets/images/logo.png'),
      ),
    );
  }
}

class Link extends StatelessWidget {
  final Widget icon;
  final String text;
  final String url;

  Link({
    required this.icon,
    required this.text,
    required this.url,
  });

  void _launchURL(BuildContext context, String url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(context, url),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 20,
            child: icon,
          ),
          const SizedBox(width: 5),
          Text(text),
        ],
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
        Link(
          icon: FaIcon(
            FontAwesomeIcons.whatsapp,
            color: Colors.white,
            size: 20,
          ),
          text: Data.whatsapp,
          url: 'https://api.whatsapp.com/send?phone=${Data.phoneNo}',
        ),
        const SizedBox(height: 10),
        Link(
          icon: FaIcon(
            FontAwesomeIcons.telegram,
            color: Colors.white,
            size: 20,
          ),
          text: Data.telegram,
          url: 'https://telegram.me/loadingLW',
        ),
        const SizedBox(height: 10),
        Link(
          icon: FaIcon(
            FontAwesomeIcons.github,
            color: Colors.white,
            size: 20,
          ),
          text: Data.github,
          url: 'https://github.com/whitmanlui',
        ),
      ],
    );
  }
}
