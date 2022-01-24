import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '/widgets/widgets.dart';

class PlaceDetailScreen extends StatelessWidget {
  static const routeName = 'place-detail';
  const PlaceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              height: dSize.height,
              width: dSize.width,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                children: [
                  SizedBox(
                    height: dSize.height * .64,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(22, 27, 25, 0),
                          height: (dSize.height * .64) - 96,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                              image: CachedNetworkImageProvider(
                                'http://njcharters.com/wp-content/uploads/2009/01/Rooftops-of-Santorini-Greece-www.njcharters.com_.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _iconBorder(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                              ),
                              _iconBorder(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.bookmark,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Santorini Island',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton.icon(
                              icon: const Icon(Icons.place, size: 17),
                              label: const Text('Greece'),
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              icon: const Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              label: const Text('4.9 (6.8k reviews)'),
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(0)),
                            ),
                            const Text.rich(
                              TextSpan(
                                text: '\$2,480/',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'night',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Facilities(),
                        Photos(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 7,
              width: dSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: FloatingActionButton(
                      shape: const StadiumBorder(),
                      child: const Text(
                        'Book Now',
                        style: TextStyle(fontSize: 23),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _iconBorder({required Widget child}) {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: const Color(0xFFE0E0E0),
        ),
      ),
      child: child,
    );
  }
}
