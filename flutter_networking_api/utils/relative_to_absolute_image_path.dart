import 'package:data_source/models/event.dart';

extension EventX on Event {
  Event changeRelativeImagePathToAbsolute(String requestOrigin) => Event(
        id: id,
        name: name,
        imageUrl: imageUrl != null ? '$requestOrigin$imageUrl' : null,
        website: website,
        type: type,
        announced: announced,
        details: details,
      );
}
