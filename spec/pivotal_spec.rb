require 'spec_helper'
require 'rspec'
require_relative '../pivotal'

describe Pivotal do

  it "should return a list of my projects" do
    tracker = Pivotal.new

    expect(tracker.projects).to eq [
                                     "Emily's URL shortener",
                                     "URLSchwartz",
                                     "gSchoolMarch2014Curriculum",
                                     "Paul Stone",
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
end