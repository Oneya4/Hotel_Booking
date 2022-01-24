import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Photos extends StatelessWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'Photos',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              child: const Text('More'),
              onPressed: () {},
              style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _photosTile(
              icon: Icons.king_bed_outlined,
              url:
                  'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_650,q_auto,w_1000/itemimages/37/60/3760498_v10.jpeg',
            ),
            _photosTile(
                icon: Icons.restaurant_menu,
                url:
                    'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_650,q_auto,w_1000/itemimages/37/60/3760498_v10.jpeg'),
            _photosTile(
              icon: Icons.ac_unit_rounded,
              url:
                  'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_650,q_auto,w_1000/itemimages/37/60/3760498_v10.jpeg',
            ),
            _photosTile(
              icon: Icons.bathtub_outlined,
              url:
                  'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_650,q_auto,w_1000/itemimages/37/60/3760498_v10.jpeg',
            ),
          ],
        ),
      ],
    );
  }

  _photosTile({required IconData icon, required String url}) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: SizedBox(
        height: 65,
        width: 63,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: CachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
