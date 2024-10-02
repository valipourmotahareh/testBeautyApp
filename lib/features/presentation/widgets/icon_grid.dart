import 'package:flutter/material.dart';
import 'package:test_beauty_city/app_ex.dart';

class IconGrid extends StatelessWidget {
  const IconGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(6, (index) {
        return Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(Icons.favorite, size: 40,
              color: Theme.of(context).primaryColor,),
            ),
            const SizedBox(height: 10),
            Text('Icon ${index + 1}'),
          ],
        );
      }),
    );
  }
}
