require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css(".title-oE5vT4")

courses.each do |course|
    binding.pry
    if course.children.text.length < 24
   puts course.children.text
    end
end
# binding.pry




