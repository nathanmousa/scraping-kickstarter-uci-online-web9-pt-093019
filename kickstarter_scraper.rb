require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}
  
  kickstarter.css("li.project.grid_4").each do |project|
  
  
  
  project.css("h2.bbcard_name strong a").text
  project.css("div.project-thumbnail a img").attibute("src").value
  project.css("p.bbcard_blurb").text
  project.css("ul.project-meta span.location-name").text
  project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
  
end