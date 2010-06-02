class Vote < ActiveRecord::Base
  has_many :secrets
end
