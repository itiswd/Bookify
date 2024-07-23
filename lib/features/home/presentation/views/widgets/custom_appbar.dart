import 'package:bookify/core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        right: 24,
        left: 24,
        bottom: 8,
      ),
      child: Row(
        children: [
          const Text(
            'Bookify',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouters.kSearch);
            },
            icon: const Icon(
              Icons.search,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
