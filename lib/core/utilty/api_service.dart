import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService({required this.dio});
   
   Future<Map<String , dynamic>> get (String url) async {
    final response = await dio.get('$baseUrl$url');
    return response.data;
   }
}