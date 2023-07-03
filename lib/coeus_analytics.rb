require 'net/https'
require 'httparty'

module CoeusAnalytics
  class Events
    def self.send_event(integration_id, event_type, payload)

      data = {
        integration_id: integration_id,
        event: event_type,
        payload: payload
      }

      result = HTTParty.post(
        "https://getcoeus.com/api/v1/events",
        body: data.to_json,
        headers: {
          "Content-Type": "application/json"
        },
        verify: false
      )

      result.code
    end
  end
end