class AddMoviesToUsers < ActiveRecord::Migration
  def change

  	create_table :movies_userss do |t|
    	t.belongs_to :actor, index: true
    	t.belongs_to :movie, index: true

  	add_column :movies, :name, :string
    add_column :users, :name, :string
  end
end
