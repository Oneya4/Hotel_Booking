import 'package:flutter/material.dart';

import '/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    icon: const Icon(Icons.place),
                    label: const Text('Santorini #007'),
                    onPressed: () {},
                    style:
                        TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Center(child: Icon(Icons.search, size: 27)),
                    ),
                  ),
                ],
              ),
              const Text.rich(
                TextSpan(
                  text: 'Explore\n',
                  style: TextStyle(fontSize: 35),
                  children: [
                    TextSpan(
                      text: 'Santorini',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Location'),
                  Text('Hotels'),
                  Text('Food'),
                  Text('Tradition'),
                  SizedBox(width: 1),
                ],
              ),
              const PlaceTile(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Other places',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                    child:
                        const Text('See all', style: TextStyle(fontSize: 16)),
                    onPressed: () {},
                  ),
                ],
              ),
              const OtherPlaces(),
            ],
          ),
        ),
        bottomNavigationBar: const NavBar(),
      ),
    );
  }
}
