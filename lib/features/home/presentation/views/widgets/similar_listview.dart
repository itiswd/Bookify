import 'package:flutter/material.dart';

import 'custom_listview_item.dart';

class SimilarListview extends StatelessWidget {
  const SimilarListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                right: index == 5 ? 24.0 : 0.0, left: index == 0 ? 24.0 : 8.0),
            child: const CustomListviewItem(
              radius: 16,
              ratio: 3,
            ),
          );
        },
      ),
    );
  }
}
