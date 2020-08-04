import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beginner_tutorial/models/location.dart';
import 'package:flutter_beginner_tutorial/screens/location_detail/location_detail.dart';
import 'package:flutter_beginner_tutorial/widgets/ImageBanner.dart';

import '../../style.dart';
import 'TileOverlay.dart';

class LocationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // you dont want to call API in build method because it can call multiple times
    final locations = Location.fetchMockData();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) => _itemBuilder(
          context,
          locations[index],
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      onTap: () => _onLocationTapped(context, location.id),
      key: Key('location_list_item_${location.id}'),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(assetPath: location.imagePath, height: 245.0),
            TileOverlay(location),
          ],
        ),
      ),
    );
  }

  _onLocationTapped(BuildContext context, int id) {
//    Location.fetchDataFromAPI();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationDetail(id),
      ),
    );
  }
}
