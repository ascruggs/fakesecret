class Secret < ActiveRecord::Base
  belongs_to  :post
  has_many    :votes  
  validates_uniqueness_of :image_url
  
  def vote_count(vote)
    self.votes.where(:opinion => Vote::VALUES[vote]).sum(:opinion).abs
  end
  
end
