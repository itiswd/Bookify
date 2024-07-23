import 'package:bookify/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          color: Colors.black,
          textColor: Colors.white,
          text: '19.99€',
          size: 20,
          topLeft: 16,
          bottomLeft: 16,
        ),
        CustomButton(
          color: Colors.orange,
          textColor: Colors.black,
          text: 'Free preview',
          size: 16,
          topRight: 16,
          bottomRight: 16,
        ),
      ],
    );
  }
}
