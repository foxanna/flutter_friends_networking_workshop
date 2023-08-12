class SupportRequest {
  const SupportRequest({
    required this.eventId,
  });

  final String eventId;

  factory SupportRequest.fromJson(Map<String, dynamic> json) => SupportRequest(
        eventId: json['eventId'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'eventId': eventId,
      };
}
