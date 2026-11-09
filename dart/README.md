# Moon Position API - Dart/Flutter Client

Moon Position calculates the moon's altitude in the sky for any latitude and longitude coordinates. Provide an optional time of day to determine lunar elevation; paid plans add custom dates, azimuth, and distance.

[![pub package](https://img.shields.io/pub/v/apiverve_moonposition.svg)](https://pub.dev/packages/apiverve_moonposition)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Moon Position API](https://apiverve.com/marketplace/moonposition?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_moonposition: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_moonposition/apiverve_moonposition.dart';

void main() async {
  final client = MoonpositionClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'lat': 37.7749,
      'lon': -122.4194,
      'date': '01-16-2026',
      'time': '14:30',
      'timezone': 'America/Los_Angeles'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "date": "01-22-2026",
    "time": "14:30",
    "coordinates": {
      "latitude": 37.7749,
      "longitude": -122.4194
    },
    "moon": {
      "altitude": -0.407908976399288,
      "azimuth": 1.4720499058762104,
      "distance": 404332.6834067969
    }
  }
}
```

## API Reference

- **API Home:** [Moon Position API](https://apiverve.com/marketplace/moonposition?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/moonposition](https://docs.apiverve.com/ref/moonposition?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
