class SecretPopulator
  
  def self.find_and_create
    site_content = Scraper.get_content
    date = Chronic.parse(site_content[:date] ).to_date
    #TODO what is rails 3 find_or_create?
    post = Post.where(:week => date).first || Post.create(:week => date)
    self.create_secrets(post , site_content[:images])
  end            
  
  private                                       
  
  def self.create_secrets(post, image_urls)
    image_urls.map do |image_url|
      #TODO what is rails 3 find_or_create?
      post.secrets.where(:image_url => image_url).first || 
      post.secrets.create(:image_url => image_url)
    end
  end
  
end