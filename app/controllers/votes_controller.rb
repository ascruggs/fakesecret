class VotesController < ApplicationController         
  
  respond_to :html
  
  def create        
    secret = Secret.where(:id => params[:id]).first
    secret.votes.create(:opinion => params[:opinion])
    redirect_to :back
  end
  
end
