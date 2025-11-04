import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'smillar_books_state.dart';

class SmillarBooksCubit extends Cubit<SmillarBooksState> {
  SmillarBooksCubit(this.homeRepo) : super(SmillarBooksInitial());
    final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SmillarBooksLoading());
    var result = await homeRepo.fetchSmillarBooks(category: category);
    result.fold(
      (failure) => emit(SmillarBooksFailur(failure.toString())),
      (books) => emit(SmillarBooksSuccess(books)),
    );
  }
}
