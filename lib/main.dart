import 'package:bookify/core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'consatants.dart';

void main() {
  runApp(const Bookify());
}

class Bookify extends StatelessWidget {
  const Bookify({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      title: 'Bookify',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
