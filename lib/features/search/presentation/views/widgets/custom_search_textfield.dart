import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'search',
          enabledBorder: outlinedBorder(),
          focusedBorder: outlinedBorder(),
          suffix: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlinedBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    );
  }
}
