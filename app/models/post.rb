class Post < ActiveRecord::Base              
  has_many :secrets
  validates_uniqueness_of :week
end
