import 'package:bookify/core/utils/styles.dart';
import 'package:bookify/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookify/features/home/presentation/views/widgets/featured_listview_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bestseller_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedListViewBlocBuilder(),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                  bottom: 12.0,
                  left: 24.0,
                  right: 24.0,
                ),
                child: Text(
                  'Best Seller',
                  style: Styles.goFont20,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestsellerListview(),
        ),
      ],
    );
  }
}
