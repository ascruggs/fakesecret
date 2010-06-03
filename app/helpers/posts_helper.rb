module PostsHelper
  
  def vote_value(vote)
    Vote::VALUES[vote]
  end            
  
  def vote_submit_text(vote, secret)
    "#{vote}: #{secret.vote_count(vote)}"
  end
  
end
