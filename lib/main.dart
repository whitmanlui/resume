import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:resume_flutter/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        // maxWidth: 1200,
        maxWidth: 1024,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        background: Container(
          color: Color(0xFFF5F5F5),
        ),
      ),
      title: 'Whitman Lui`s Online Resume',
      theme: ThemeData(
          primaryColor: Color(0xff434f5e),
          textTheme: TextTheme(
            headline4: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            headline5: TextStyle(
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          )),
      home: HomePage(),
    );
  }
}
