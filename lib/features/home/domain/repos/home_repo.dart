import 'package:bookify/core/errors/failures.dart';
import 'package:bookify/features/home/domain/entities/entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestdBooks();
}
