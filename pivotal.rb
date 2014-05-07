require 'faraday'
require 'json'
require 'dotenv'
Dotenv.load

class Pivotal

  def projects
    connection = Faraday.new "https://www.pivotaltracker.com/services/v5/projects"
    response = connection.get do |req|
      req.url "https://www.pivotaltracker.com/services/v5/projects"
      req.headers['X-TrackerToken'] = ENV['TOKEN']
    end
    json_data = response.body
    project_names = JSON.parse(json_data)
    project_names.map { |name| name["name"] }
  end

  def stories
    connection = Faraday.new "https://www.pivotaltracker.com/services/v5/projects/1060096/stories?date_format=millis&with_state=unstarted"
    response = connection.get do |req|
      req.url "https://www.pivotaltracker.com/services/v5/projects/1060096/stories?date_format=millis&with_state=unstarted"
      req.headers['X-TrackerToken'] = ENV['TOKEN']
    end
    json_data = response.body
    project_stories = JSON.parse(json_data)
    project_stories.map { |name| name["name"] }
  end

  def details
    connection = Faraday.new "https://www.pivotaltracker.com/services/v5/projects/1060096/stories/69485114"
    response = connection.get do |req|
      req.url "https://www.pivotaltracker.com/services/v5/projects/1060096/stories/69485114"
      req.headers['X-TrackerToken'] = ENV['TOKEN']
    end
    json_data = response.body
    project_details = JSON.parse(json_data)
    project_details["description"]
  end
end

