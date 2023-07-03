[![Gem Version](https://badge.fury.io/rb/coeus_analytics.svg)](https://badge.fury.io/rb/coeus_analytics)

# Coeus Analytics
A ruby gem to track and measure what matters. 
```
gem 'coeus_analytics', '~> 0.1.1'
```

## Usage
Add where you need to track 
```
Coeus.send_event(
  ENV['COEUS_API_KEY'],
  'your_event_type',
  {
    "a": "b" # Add any metadata
  }
)
```