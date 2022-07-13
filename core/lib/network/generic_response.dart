abstract class GenericResponse{}

class CorrectResponse<T> extends GenericResponse {
  T data;
  CorrectResponse({required this.data});
}

class ErrorResponse extends GenericResponse {
  dynamic error;
  ErrorResponse(this.error);
}