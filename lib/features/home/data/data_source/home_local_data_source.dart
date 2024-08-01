import 'package:bookify/consatants.dart';
import 'package:bookify/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBooks);
    return box.values.toList();
  }
}
