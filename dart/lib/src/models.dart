/// Response models for the Moon Position API.

/// API Response wrapper.
class MoonpositionResponse {
  final String status;
  final dynamic error;
  final MoonpositionData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MoonpositionResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MoonpositionResponse.fromJson(Map<String, dynamic> json) => MoonpositionResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MoonpositionData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Moon Position API.

class MoonpositionData {
  String? date;
  String? time;
  MoonpositionDataCoordinates? coordinates;
  MoonpositionDataMoon? moon;

  MoonpositionData({
    this.date,
    this.time,
    this.coordinates,
    this.moon,
  });

  factory MoonpositionData.fromJson(Map<String, dynamic> json) => MoonpositionData(
      date: json['date'],
      time: json['time'],
      coordinates: json['coordinates'] != null ? MoonpositionDataCoordinates.fromJson(json['coordinates']) : null,
      moon: json['moon'] != null ? MoonpositionDataMoon.fromJson(json['moon']) : null,
    );
}

class MoonpositionDataCoordinates {
  num? latitude;
  num? longitude;

  MoonpositionDataCoordinates({
    this.latitude,
    this.longitude,
  });

  factory MoonpositionDataCoordinates.fromJson(Map<String, dynamic> json) => MoonpositionDataCoordinates(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
}

class MoonpositionDataMoon {
  num? altitude;
  num? azimuth;
  num? distance;

  MoonpositionDataMoon({
    this.altitude,
    this.azimuth,
    this.distance,
  });

  factory MoonpositionDataMoon.fromJson(Map<String, dynamic> json) => MoonpositionDataMoon(
      altitude: json['altitude'],
      azimuth: json['azimuth'],
      distance: json['distance'],
    );
}

class MoonpositionRequest {
  double lat;
  double lon;
  String? date;
  String? time;
  String? timezone;

  MoonpositionRequest({
    required this.lat,
    required this.lon,
    this.date,
    this.time,
    this.timezone,
  });

  Map<String, dynamic> toJson() => {
      'lat': lat,
      'lon': lon,
      if (date != null) 'date': date,
      if (time != null) 'time': time,
      if (timezone != null) 'timezone': timezone,
    };
}
