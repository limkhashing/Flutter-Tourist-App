import 'package:flutter/material.dart';
import 'package:flutter_beginner_tutorial/screens/locations/locations.dart';
import 'package:flutter_beginner_tutorial/style.dart';

import 'constants/routes.dart';
import 'screens/location_detail/location_detail.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      onGenerateRoute: _routes(), // Also works to tell what dynamic route available
      theme: _theme(),
      home: Locations(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(subtitle1: AppBarTextStyle),
      ),
      textTheme: TextTheme(
        subtitle1: TitleTextStyle,
        subtitle2: SubTitleTextStyle,
        caption: CaptionTextStyle,
        bodyText1: Body1TextStyle,
      ),
    );
  }
}
