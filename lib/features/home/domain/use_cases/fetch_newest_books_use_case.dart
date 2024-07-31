import 'package:bookify/core/errors/failures.dart';
import 'package:bookify/features/home/domain/repos/home_repo.dart';
import 'package:bookify/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:dartz/dartz.dart';

import '../entities/entity.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) {
    //can add more code here
    return homeRepo.fetchNewestBooks();
  }
}
