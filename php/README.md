# Moon Position API - PHP Package

Moon Position calculates the moon's altitude in the sky for any latitude and longitude coordinates. Provide an optional time of day to determine lunar elevation; paid plans add custom dates, azimuth, and distance.

## Installation

Install via Composer:

```bash
composer require apiverve/moonposition
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Moonposition\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'lat' => 37.7749,
    'lon' => -122.4194,
    'date' => '01-16-2026',
    'time' => '14:30',
    'timezone' => 'America/Los_Angeles'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Moonposition\Client;
use APIVerve\Moonposition\Exceptions\APIException;
use APIVerve\Moonposition\Exceptions\ValidationException;

try {
    $response = $client->execute(['lat' => 37.7749, 'lon' => -122.4194, 'date' => '01-16-2026', 'time' => '14:30', 'timezone' => 'America/Los_Angeles']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/moonposition?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/moonposition?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/moonposition?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
