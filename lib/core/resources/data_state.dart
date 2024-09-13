import 'package:dio/dio.dart';

abstract class DataState<T> {
   final T ? data;
   final DioException ? error;

  const DataState({
    this.data, this.error
  });
}
//For a successflul response
class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}
//When an error occurs during that response
class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}