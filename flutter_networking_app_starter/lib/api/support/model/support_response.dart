class SupportResponse {
  const SupportResponse({
    required this.message,
  });

  final String message;

  factory SupportResponse.fromJson(Map<String, dynamic> json) =>
      SupportResponse(
        message: json['message'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message,
      };
}
