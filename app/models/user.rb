class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true
  #admin default value
  
  has_many :user_events
  has_many :events, through: :user_events
end