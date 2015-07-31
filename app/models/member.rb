class Member < ActiveRecord::Base
  has_many :event_member
  has_many :events, :through => :event_member
  has_many :comments
  has_many :whiskeys
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
