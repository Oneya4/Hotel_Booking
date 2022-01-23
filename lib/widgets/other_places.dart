import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '/screens/screens.dart';

class OtherPlaces extends StatelessWidget {
  const OtherPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(PlaceDetailScreen.routeName),
      tileColor: const Color(0xFFEEEEEE),
      // contentPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          imageUrl:
              'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_650,q_auto,w_1000/itemimages/37/60/3760498_v10.jpeg',
          height: 200,
          width: 120,
          fit: BoxFit.cover,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Imerovigli Luxury Hotel',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                icon: const Icon(Icons.place, size: 17),
                label: const Text('Greece'),
                onPressed: () {},
                style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
              ),
              const Text('\$1,680/night'),
            ],
          ),
          TextButton.icon(
            icon: const Icon(Icons.star, size: 17),
            label: const Text('4.9(6.8k reviews)'),
            onPressed: () {},
            style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
          ),
        ],
      ),
    );
  }
}
