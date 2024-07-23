import 'package:bookify/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListviewItem extends StatelessWidget {
  final double ratio;
  final double radius;
  const CustomListviewItem(
      {super.key, required this.ratio, required this.radius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        height: MediaQuery.of(context).size.height / ratio,
        AssetsData.testBook,
      ),
    );
  }
}
