import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PlaceTile extends StatelessWidget {
  const PlaceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return SizedBox(
      height: dSize.height * .33,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => InkWell(
          splashColor: Colors.blue[300],
          borderRadius: BorderRadius.circular(25),
          onTap: () {},
          child: GestureDetector(
            onTap: () => print('Tapped $index'),
            child: Container(
              width: dSize.width * .56,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: const Color(0xFFEEEEEE)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: CachedNetworkImage(
                      imageUrl:
                          'http://njcharters.com/wp-content/uploads/2009/01/Rooftops-of-Santorini-Greece-www.njcharters.com_.jpg',
                      fit: BoxFit.cover,
                      width: (dSize.width * .56) - 5,
                      height: (dSize.height * .26) - 19,
                    ),
                  ),
                  const Text(
                    'Santorini Island',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                          icon: const Icon(Icons.place),
                          label: const Text('Greece'),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(0))),
                      const Text('\$2,480/night'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        separatorBuilder: (ctx, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 3,
      ),
    );
  }
}
