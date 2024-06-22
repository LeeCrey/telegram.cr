# https://core.telegram.org/bots/api#location
class Location
  JSON.mapping(
    latitude: Float64,
    longitude: Float64,
    horizontal_accuracy: Float32?,
    live_period: Int32?,
    heading: Int32?,
    proximity_alert_radius: Int32?,
  )
end
