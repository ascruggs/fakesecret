class Vote < ActiveRecord::Base
  FAKE = 'fake'
  REAL = 'real'
  VALUES = {FAKE => -1, REAL => 1}
  has_many :secrets
end
