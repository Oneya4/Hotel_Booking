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
        separatorBuilder: (ctx, index) => const SizedBox(width: 10),
        itemCount: 3,
        itemBuilder: (ctx, index) => InkWell(
          splashColor: Colors.blue[300],
          borderRadius: BorderRadius.circular(25),
          onTap: () {},
          child: GestureDetector(
            onTap: () => print('Tapped $index'),
            child: Container(
              width: dSize.width * .56,
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
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
                  const SizedBox(height: 5),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
