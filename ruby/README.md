# Moon Position API - Ruby Gem

Moon Position calculates the moon's altitude in the sky for any latitude and longitude coordinates. Provide an optional time of day to determine lunar elevation; paid plans add custom dates, azimuth, and distance.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_moonposition'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_moonposition
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_moonposition'

# Initialize the client
client = APIVerve::Moonposition::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  lat: 37.7749,
  lon: -122.4194,
  date: "01-16-2026",
  time: "14:30",
  timezone: "America/Los_Angeles"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ lat: 37.7749, lon: -122.4194, date: "01-16-2026", time: "14:30", timezone: "America/Los_Angeles" })
  puts response["data"]
rescue APIVerve::Moonposition::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Moonposition::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Moonposition::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/moonposition?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/moonposition?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/moonposition?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
