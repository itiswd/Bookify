import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final double? topLeft;
  final double? topRight;
  final double? bottomLeft;
  final double? bottomRight;
  final Color color;
  final Color textColor;
  final String text;
  final double size;
  const CustomButton(
      {super.key,
      this.topLeft,
      this.topRight,
      this.bottomLeft,
      this.bottomRight,
      required this.color,
      required this.text,
      required this.size,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.of(context).size.width * 0.35,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          overlayColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft ?? 0),
              topRight: Radius.circular(topRight ?? 0),
              bottomLeft: Radius.circular(bottomLeft ?? 0),
              bottomRight: Radius.circular(bottomRight ?? 0),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.goFont20.copyWith(
            color: textColor,
            fontSize: size,
          ),
        ),
      ),
    );
  }
}
