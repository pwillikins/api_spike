require 'spec_helper'
require 'rspec'
require_relative '../pivotal'

describe Pivotal do

  it "should return a list of my projects" do
    tracker = Pivotal.new

    expect(tracker.projects).to eq [
                                     "Paul Stone",
                                     "Emily's URL shortener",
                                     "URLSchwartz",
                                     "gSchoolMarch2014Curriculum",
                                     "gSchoolScreenHeroRequests",
                                     "Toolbelt - DaVinci Coders",
                                     "My Sample Project",
                                     "Paul S - URL Shortener",
                                     "students.gschool.it",
                                     "new_url_shortener",
                                     "Paul Stone's User Authentication",
                                     "Sparkling Hill Team CRUD"
                                   ]
  end

  it "should return a list of stories" do
    tracker = Pivotal.new

    expect(tracker.stories).to eq [
                                    "Administrator users can see a list of all other users",
                                    "Non administrator users are not allowed to see users list",
                                    "Basic authorization complete",
                                    "User cannot register if their password doesn't match the confirmation",
                                    "User cannot register if their password is less than 3 characters",
                                    "User cannot register if their password is blank",
                                    "User cannot register with an email address that already exists",
                                    "Better validation"
                                  ]
  end

  it "should return the details of a story" do
    tracker = Pivotal.new

    expect(tracker.details).to eq "Given a logged in user\nWhen the user clicks on \"View all users\" (only visible for administrator users)\nThen they should see a list of all users, including their ids and email addresses"

  end
end