import 'package:flutter/cupertino.dart';

import '/models/place.dart';

class PlaceList with ChangeNotifier {
  List<Place> get places => _places;

  final List<Place> _places = [
    Place(
      id: 'P1',
      location: 'Greece',
      name: 'Santorini Island',
      imageUrl: 'imageUrl',
      cost: 2480,
      reviews: 4.9,
    ),
    Place(
      id: 'P2',
      location: 'Greece',
      name: 'Thera Town',
      imageUrl: 'imageUrl',
      cost: 2000,
      reviews: 4.5,
    ),
    Place(
      id: 'P3',
      location: 'Greece',
      name: 'Imerovingli Luxury Hotel',
      imageUrl: 'imageUrl',
      cost: 1680,
      reviews: 4.4,
    ),
  ];
}
