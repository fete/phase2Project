class Event < ActiveRecord::Base
  belongs_to :user
  # Remember to create a migration!
  validates :title, presence: true 
  validates :description, presence: true 

  
end
