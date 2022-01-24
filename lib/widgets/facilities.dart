import 'package:flutter/material.dart';

class Facilities extends StatelessWidget {
  const Facilities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'Facilities',
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
            _facilitiesTile(
              icon: Icons.king_bed_outlined,
              description: '2 Bed',
            ),
            _facilitiesTile(
              icon: Icons.restaurant_menu,
              description: 'Dinner',
            ),
            _facilitiesTile(
              icon: Icons.ac_unit_rounded,
              description: '1 Ac',
            ),
            _facilitiesTile(
              icon: Icons.bathtub_outlined,
              description: '1 Tub',
            ),
          ],
        ),
      ],
    );
  }

  _facilitiesTile({required IconData icon, required String description}) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: SizedBox(
        height: 65,
        width: 63,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, size: 35),
            Text(description, style: const TextStyle(fontSize: 13)),
          ],
        ),
      ),
    );
  }
}
