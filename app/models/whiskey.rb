class Whiskey < ActiveRecord::Base
  belongs_to :event
  belongs_to :member
  has_many :comments
end
