class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  
  has_many :user_events
  has_many :events, through :user_events
end