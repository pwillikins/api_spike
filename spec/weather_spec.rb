require 'rspec'
require 'spec_helper'
require_relative '../weather'

describe Weather do

  before {
    @current_weather = Weather.new("boulder, co")
  }

  it "should return the weather for Boulder, CO" do
    expect(@current_weather.forecast).to eq("few clouds")
  end

  it "should return the 7 day forecast for Boulder, CO" do
    expect(@current_weather.seven_day_forecast).to eq ["scattered clouds", "broken clouds", "light rain", "moderate rain", "light rain", "moderate rain", "light rain"]
  end
end