import 'package:flutter/material.dart';
import 'package:flutter_beginner_tutorial/screens/location_detail/location_detail.dart';
import 'package:flutter_beginner_tutorial/style.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(textTheme: TextTheme(subtitle1: AppBarTextStyle)),
          textTheme: TextTheme(subtitle1: TitleTextStyle, bodyText1: Body1TextStyle)),
      home: LocationDetail(),
    );
  }
}
