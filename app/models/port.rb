class Port < ActiveRecord::Base
  attr_accessible :interface, :status, :switch_id
  belongs_to :switch
end
