import 'package:flutter/material.dart';
import 'package:resume_flutter/widgets/body.dart';
import 'package:resume_flutter/widgets/header.dart';
import 'package:resume_flutter/widgets/right_body.dart';

class HomePage extends StatefulWidget {
  HomePage() : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Header(),
            Container(
              padding: const EdgeInsets.all(30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Body(),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: RightBody(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
