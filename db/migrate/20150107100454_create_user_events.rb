class CreateUserEvents < ActiveRecord::Migration
  def change
  	create_table :user_events do |t|
  	  t.references :user
  	  t.references :event 

  	 
  	end
  end
end
