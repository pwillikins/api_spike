require 'faraday'
require 'json'
require 'dotenv'
Dotenv.load

class Pivotal

  def initialize
    @connection = Faraday.new "https://www.pivotaltracker.com/services/v5/projects"
    @response = @connection.get do |req|
      req.url "https://www.pivotaltracker.com/services/v5/projects"
      req.headers['X-TrackerToken'] = ENV['TOKEN']
    end
  end

  def projects
    json_data = @response.body
    project_names = JSON.parse(json_data)
    project_names.map {|name| name["name"]}
  end

end

