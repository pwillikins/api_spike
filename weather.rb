require 'faraday'
require 'json'

class Weather

  def initialize(city)
  @city = city

  end

  def forecast
    response = Faraday.get("http://openweathermap.org/data/2.5/weather?q=#{@city}")
    json = response.body
    json_data = JSON.parse(json)

    json_data["weather"].map {|element| element["description"]}.join(", ")
  end

  def seven_day_forecast
    forecast_response = Faraday.get("http://openweathermap.org/data/2.5/forecast/daily?q=#{@city}")
    json_data = forecast_response.body
    forecast_data = JSON.parse(json_data)

    forecast_data["list"].each_with_object([]) do |day, week_forecast|
      week_forecast << day["weather"].first["description"]
    end
  end
end