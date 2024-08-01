import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookify/features/home/domain/entities/book_entity.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
