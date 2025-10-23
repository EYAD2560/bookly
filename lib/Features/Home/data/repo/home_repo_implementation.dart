import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repo/home_repo.dart';
import 'package:bookly/failure/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRewpoImplementation  implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBookDetails() {
    // TODO: implement fetchNewsetBookss
    throw UnimplementedError();
  }
  // Implementation details for Home Repository
}