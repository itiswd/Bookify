import 'package:bookify/features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                right: index == 5 ? 24.0 : 0.0, left: index == 0 ? 24.0 : 8.0),
            child: const CustomListviewItem(
              ratio: 3,
              radius: 24,
            ),
          );
        },
      ),
    );
  }
}
