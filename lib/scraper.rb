require 'nokogiri'
require 'open-uri'


html =  open("https://flatironschool.com/")
doc = Nokogiri::HTML(open("https://flatironschool.com/"))


doc.css(".headline-26OIBN")

#doc.css(".headline-26OIBN").text

# We used Nokogiri to get the HTML of a web page. We used the element inspector in the browser
# to ID the CSS selector of the data we wanted to scrape. We used the .css Nokogiri method, along with that CSS selector,
# to grab the element that contains our desired data. Finally, we used the .text method to retrieve the desired text.

doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

courses.each do |course|
  puts course.text.strip
end

p doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")[0].name
