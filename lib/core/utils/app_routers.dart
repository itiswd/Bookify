import 'package:bookify/features/home/presentation/views/book_details_view.dart';
import 'package:bookify/features/home/presentation/views/home_view.dart';
import 'package:bookify/features/search/presentation/views/search_view.dart';
import 'package:bookify/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeRoute = '/home';
  static const kBookDetailsRoute = '/details';
  static const kSearch = '/search';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearch,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
