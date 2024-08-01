import 'package:bookify/core/utils/app_routers.dart';
import 'package:bookify/core/utils/functions/setup_service_locator.dart';
import 'package:bookify/core/utils/simple_bloc_observer.dart';
import 'package:bookify/features/home/data/repos/home_repo_imp.dart';
import 'package:bookify/features/home/domain/entities/book_entity.dart';
import 'package:bookify/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookify/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookify/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookify/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'consatants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBooks);
  await Hive.openBox<BookEntity>(kNewestBooks);
  Bloc.observer = SimpleBlocObserver();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedBooksCubit(
            FetchFeaturedBooksUseCase(
              getIt.get<HomeRepoImp>(),
            ),
          )..fetchFeaturedBooks();
        }),
        BlocProvider(create: (context) {
          return NewestBooksCubit(
            FetchNewestBooksUseCase(
              getIt.get<HomeRepoImp>(),
            ),
          );
        })
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        title: 'Bookify',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
