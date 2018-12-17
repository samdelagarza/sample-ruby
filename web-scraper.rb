require './Scraper.rb'

puts "Hello, here are the latest news articles"

# get list of news articles

# create an array of news article objects

# iterate through the articles and call display()
s = Scraper.new

s.scrape

s.news_article.each do |article|
    puts article.title
end


puts "1. New book released"
puts "2. New song released"

puts "Enter the number of the article you would like to read or to exit type 'q'"
article_to_read = gets.chomp

# users_name = gets.chomp

if article_to_read == "q"
        exit
else
    puts "get additional article info" 
    # pull description of article selected
end


# Create a greating

# Prompt the user with a question

# pull the newsfeed via jw.org rss // https://www.jw.org/en/whats-new/rss/WhatsNewWebArticles/feed.xml

# display the news titles with a number next to them