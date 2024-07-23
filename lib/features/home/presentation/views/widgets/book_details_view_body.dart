import 'package:bookify/core/utils/styles.dart';
import 'package:bookify/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'book_details_appbar.dart';
import 'box_action.dart';
import 'custom_listview_item.dart';
import 'similar_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const CustomDetailsAppBar(),
              const CustomListviewItem(
                ratio: 3,
                radius: 24,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 48,
                  vertical: 12.0,
                ),
                child: Text(
                  'Harry potter the goblet of fire',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle36,
                ),
              ),
              Text(
                'J.K. Bowling',
                style: Styles.goFont20.copyWith(
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 12.0),
              const BookRating(),
              const SizedBox(height: 12.0),
              const Expanded(child: SizedBox(height: 24)),
              const BoxAction(),
              const Expanded(child: SizedBox(height: 24)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    'You can also like',
                    style: Styles.goFont20.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const SimilarListview(),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }
}
