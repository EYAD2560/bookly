import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repo/home_repo.dart';
import 'package:bookly/core/utilty/api_service.dart';
import 'package:bookly/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRewpoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRewpoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        'volumes?Filtering=free-ebooks&Sorting=relevance&q=computer science',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBookDetails() {
    // TODO: implement fetchNewsetBookss
    throw UnimplementedError();
  }

  // Implementation details for Home Repository
}
