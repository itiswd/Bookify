import 'package:bookify/core/utils/app_routers.dart';
import 'package:bookify/core/utils/assets.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BestsellerListviewItem extends StatelessWidget {
  const BestsellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDetailsRoute);
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 24.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                height: MediaQuery.of(context).size.height / 6.5,
                AssetsData.testBook,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry potter the goblet of fire',
                    style: Styles.textStyle24,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'J.K. Bowling',
                  style: Styles.goFont12,
                ),
                const SizedBox(height: 4.0),
                const Row(
                  children: [
                    Text(
                      '19.99€',
                      style: Styles.goFont20,
                    ),
                    Spacer(),
                    BookRating(),
                    SizedBox(width: 20.0),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
