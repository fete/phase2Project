class CreateUserEvents < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  	  t.references :user
  	  t.references :event 

  	 
  	end
  end
end
