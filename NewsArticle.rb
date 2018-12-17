class NewsArticle 

    attr_accessor :link, :title, :publication_date
   
    def initialize(title, link, publication_date)
        @title = title
        @link = link 
        @publication_date = publication_date
    end 
end