class UserEvent < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :event
end
