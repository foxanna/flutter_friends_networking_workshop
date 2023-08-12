sealed class ApiEventLocation {
  factory ApiEventLocation.fromJson(Map<String, dynamic> json) =>
      switch (json['type'] as String?) {
        'online' => OnlineApiEventLocation.fromJson(json),
        'in-person' => InPersonApiEventLocation.fromJson(json),
        'hybrid' => HybridApiEventLocation.fromJson(json),
        _ => UnknownApiEventLocation.fromJson(json),
      };

  Map<String, dynamic> toJson();
}

class OnlineApiEventLocation implements ApiEventLocation {
  const OnlineApiEventLocation({
    required this.streamUrl,
  });

  final String streamUrl;

  factory OnlineApiEventLocation.fromJson(Map<String, dynamic> json) =>
      OnlineApiEventLocation(
        streamUrl: json['streamUrl'] as String,
      );

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'streamUrl': streamUrl,
        'type': 'online',
      };
}

class InPersonApiEventLocation implements ApiEventLocation {
  const InPersonApiEventLocation({
    required this.address,
  });

  final String address;

  factory InPersonApiEventLocation.fromJson(Map<String, dynamic> json) =>
      InPersonApiEventLocation(
        address: json['address'] as String,
      );

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'address': address,
        'type': 'in-person',
      };
}

class HybridApiEventLocation implements ApiEventLocation {
  const HybridApiEventLocation({
    required this.streamUrl,
    required this.address,
  });

  final String streamUrl;
  final String address;

  factory HybridApiEventLocation.fromJson(Map<String, dynamic> json) =>
      HybridApiEventLocation(
        streamUrl: json['streamUrl'] as String,
        address: json['address'] as String,
      );

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'streamUrl': streamUrl,
        'address': address,
        'type': 'hybrid',
      };
}

class UnknownApiEventLocation implements ApiEventLocation {
  const UnknownApiEventLocation();

  factory UnknownApiEventLocation.fromJson(Map<String, dynamic> json) =>
      const UnknownApiEventLocation();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}
