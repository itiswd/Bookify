import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.orange,
        ),
        SizedBox(width: 4.0),
        Text(
          '4.8',
          style: Styles.goFont20,
        ),
        SizedBox(width: 4.0),
        Text(
          '(752)',
          style: Styles.goFont16,
        ),
      ],
    );
  }
}
