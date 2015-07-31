class Event < ActiveRecord::Base
  has_many :event_member
  has_many :members, :through => :event_member
  has_many :whiskeys
end
