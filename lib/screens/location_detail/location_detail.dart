import 'package:flutter/material.dart';
import 'package:flutter_beginner_tutorial/models/location.dart';
import 'package:flutter_beginner_tutorial/screens/location_detail/text_section.dart';
import 'package:flutter_beginner_tutorial/widgets/ImageBanner.dart';
import 'package:flutter_beginner_tutorial/widgets/LocationTile.dart';

import '../../style.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;
  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageBanner(assetPath: location.imagePath),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
              child: LocationTile(location: location),
            ),

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
