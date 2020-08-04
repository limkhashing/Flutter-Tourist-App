import 'package:flutter/material.dart';
import 'package:flutter_beginner_tutorial/models/location.dart';
import 'package:flutter_beginner_tutorial/screens/location_detail/text_section.dart';
import 'package:flutter_beginner_tutorial/widgets/ImageBanner.dart';

class LocationDetail extends StatelessWidget {

  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    // you dont want to call API in build method because it can call multiple times
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageBanner(assetPath: location.imagePath),
            // Spread operator, similar to Cascades operator
            ...textSections(location),
          ],
          //..addAll(textSections(location)
        ),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
