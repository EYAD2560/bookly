part of 'smillar_books_cubit.dart';

sealed class SmillarBooksState extends Equatable {
  const SmillarBooksState();

  @override
  List<Object> get props => [];
}

final class SmillarBooksInitial extends SmillarBooksState {}

final class SmillarBooksLoading extends SmillarBooksState {}

final class SmillarBooksSuccess extends SmillarBooksState {
  final List<BookModel> books;
  const SmillarBooksSuccess(this.books);
}
final class SmillarBooksFailur extends SmillarBooksState {
  final String errorMessage;
  const SmillarBooksFailur(this.errorMessage);}