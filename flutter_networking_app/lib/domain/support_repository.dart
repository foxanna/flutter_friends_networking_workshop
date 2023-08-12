import 'package:flutter_networking_app/api/support/model/support_request.dart';
import 'package:flutter_networking_app/api/support/support_api.dart';

class SupportRepository {
  const SupportRepository(this._api);

  final SupportApi _api;

  Future<String> createSponsorshipRequest(String eventId) async {
    final response = await _api.applyToSponsor(
      SupportRequest(eventId: eventId),
    );
    return response.data.message;
  }

  Future<String> createSpeakingRequest(String eventId) async {
    final response = await _api.applyToSpeak(
      SupportRequest(eventId: eventId),
    );
    return response.data.message;
  }
}
