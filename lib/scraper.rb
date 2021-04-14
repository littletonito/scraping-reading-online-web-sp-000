require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN")


#doc.css(".headline-26OIBN").text
# We used Nokogiri to get the HTML of a web page. We used the element inspector in the browser
# to ID the CSS selector of the data we wanted to scrape. We used the .css Nokogiri method, along with that CSS selector,
# to grab the element that contains our desired data. Finally, we used the .text method to retrieve the desired text.





html =  open("https://flatironschool.com/")
