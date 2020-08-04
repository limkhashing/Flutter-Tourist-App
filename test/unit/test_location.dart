import 'package:flutter_beginner_tutorial/models/location.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Locations can be fetched', () {
    final locations = Location.fetchMockData();

    expect(locations.length, greaterThan(0));

    for (Location l in locations) {
      expect(l.facts.length, greaterThan(0));
    }
  });

  test('Locations can be fetched by ID', () {
    final locations = Location.fetchMockData();

    for (Location l in locations) {
      final fetchedLocation = Location.fetchByID(l.id);
      expect(fetchedLocation, isNotNull);
      expect(fetchedLocation.id, equals(l.id));
    }
  });
}