class ApiResponse<T> {
  const ApiResponse._({
    required this.data,
  });

  final T data;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      ApiResponse<T>._(
        data: fromJsonT(json['data']),
      );
}
