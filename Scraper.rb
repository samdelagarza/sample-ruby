require 'open-uri'
require 'nokogiri'
require 'json'

require './NewsArticle'

class Scraper 

    @@all = []
    def initialize()
        
    end 

    def scrape
        url = "https://www.jw.org/en/whats-new/rss/WhatsNewWebArticles/feed.xml"
        html = open (url)
        doc = Nokogiri::XML(html)
        
        return doc
    end 

    def news_article
        doc = self.scrape()

        channel = doc.at('channel')

        channel.search('item').each do |item|
            title = item.css('title')
            link = item.css('link')
            publication_date = item.css('pubDate')

            a = NewsArticle.new(title, link, publication_date)

            # puts a.link
            @@all.push(a)
        end 
        
        return @@all
    end 

    def news_article_summary

    end 

end 