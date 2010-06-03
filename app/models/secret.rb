class Secret < ActiveRecord::Base
  belongs_to  :post
  has_many    :votes
  
  def vote_count(vote)
    self.votes.where(:opinion => Vote::VALUES[vote]).sum(:opinion).abs
  end
  
end
