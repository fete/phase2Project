class Event < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, presence: true 
  validates :description, presence: true 

  has_many :user_events
  has_many :users, through :user_events
end
