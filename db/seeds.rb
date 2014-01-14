# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Events
Event.delete_all

events = [ 
  { :title => "Fall 2013 Infosession", :start_time => DateTime.new(2013, 9, 10, 19, 0, 0, "-8"), :end_time => DateTime.new(2013, 9, 10, 21, 0, 0, "-8"), :location => "220 Wheeler, 122 Wheeler", :description => "We will be holding two infosessions to kick off the Fall 2013 Semester. We will go over the club's mission and purpose, introduce our current officers, go over the projects we will be working on this semester, and give members the chance to sign up to participate!", :url => "https://www.facebook.com/events/518426954893420/" }
]

events.each do |event|
  Event.create(:title => event[:title], :start_time => event[:start_time], :end_time => event[:end_time], :location => event[:location], :description => event[:description], :url => event[:url])
end

# Officers
Officer.delete_all

officers = [
  { :name => "Michael Lannin", :position => "President", :img_url => "" },
  { :name => "Paulina Ramos", :position => "VP of Operations", :img_url => "" },
  { :name => "Nick Freeman", :position => "VP of Training & Development", :img_url => "" },
  { :name => "Christine Loh", :position => "VP of Marketing & Finance", :img_url => "" }
]

officers.each do |officer|
  Officer.create(:name => officer[:name], :position => officer[:position], :img_url => officer[:img_url])
end

# Terms
Term.delete_all

terms = [
  { :season => "Fall", :year => 2013 }
]
new_terms = []

terms.each do |term|
  new_terms.push(Term.create(:season => term[:season], :year => term[:year]))
end

# Projects
Project.delete_all

projects = [
  { :organization => "Asian-Americans for Community Involvement", :description => "The mission of Asian Americans for Community Involvement is to improve the health, mental health and well-being of individuals, families and the Asian community. We are working on a web app that allows hospitals to post appointments for patients who need help getting to their appointments.", :url => "http://aaci.org/", :term_id => new_terms.first.id },
  { :organization => "Cal Opportunity Scholars Association", :description => "Cal Opportunity Scholars Association (COSA) aims to help recipients of the Cal Opportunity Scholarship by providing them with academic support and introducing them to students, professors, and faculty on campus who can help them reach their goals. We are developing a new website for COSA using HTML5, CSS3, and Javascript so that they can more effectively communicate with their current and potential future members.", :url => "", :term_id => new_terms.first.id },
  { :organization => "Hollaback", :description => "Hollaback is a nonprofit organization dedicated to ending street harassment. We are currently working on creating a website to host their interactive webcomic. This website will support Tumblr and YouTube functionality in order to allow users to share their reactions to the comic.", :url => "http://philly.ihollaback.org/", :term_id => new_terms.first.id },
  { :organization => "El Concilio of San Mateo County", :description => "El Concilio is a nonprofit coalition of organizations and individuals committed to improving the quality of life for underserved communities by increasing leadership, education, and emploment opportunities, and access to quality and appropriate health care in San Mateo County. We are currently working to update and re-design their outdated website to have a modern look while easily communicating information and resources to those seeking.", :url => "", :term_id => new_terms.first.id }
]

projects.each do |project|
  new_project = Project.create(:organization => project[:organization], :description => project[:description], :url => project[:url], :term_id => project[:term_id])
end
