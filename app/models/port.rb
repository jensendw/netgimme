class Port < ActiveRecord::Base
  attr_accessible :interface, :status, :switch_id, :vlans, :mode, :nativevlan
  belongs_to :switch
end
