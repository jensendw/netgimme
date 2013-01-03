class Switch < ActiveRecord::Base
  attr_accessible :name
  has_many :ports
end
