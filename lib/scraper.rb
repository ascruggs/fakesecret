class Scraper              
  
  @@url = "http://www.postsecret.com/"    
  
  def self.get_content  #http://37signals.com/svn/posts/2358-this-is-not-content
    a = Mechanize.new
    page = a.get(@@url).parser     
    #if this get any more complicated, we should return a class or a struct
    {:date => date(page), :images => image_urls(page) }
  end   
  
  private
  
  def self.image_urls(page)
    images = page.css(".post-body img")
    images.map{|element| element.attributes["src"].value }
  end         
  
  def self.date(page) 
    page.css(".date-header").first.content
  end
  
end