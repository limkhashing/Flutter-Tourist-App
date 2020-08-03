import 'package:flutter/material.dart';
import 'package:flutter_beginner_tutorial/screens/location_detail/text_section.dart';

import 'Image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tourison & CO.'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageBanner("assets/images/kiyomizu-dera.jpg"),
            TextSection("Hello",
                "Something Something Something Something Something Something Something Something"),
            TextSection("Hello", "Something"),
            TextSection("Hello", "Something"),
          ],
        ));
  }
}
