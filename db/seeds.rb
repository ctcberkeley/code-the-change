# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = [ 
  [ "Fall 2013 Infosession", DateTime.new(2013, 9, 10, 19, 0, 0, "-8"), DateTime.new(2013, 9, 10, 21, 0, 0, "-8"), "220 Wheeler, 122 Wheeler", "We will be holding two infosessions to kick off the Fall 2013 Semester. We will go over the club's mission and purpose, introduce our current officers, go over the projects we will be working on this semester, and give members the chance to sign up to participate!", 'https://www.facebook.com/events/518426954893420/' ]
]

events.each do |title, start, end_time, location, description, url|
  Event.create(:title => title, :start => start, :end => end_time, :location => location, :description => description, :url => url)
end