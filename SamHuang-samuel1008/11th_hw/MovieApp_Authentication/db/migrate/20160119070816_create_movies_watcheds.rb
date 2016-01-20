class CreateMoviesWatcheds < ActiveRecord::Migration
  def change
    create_table :movies_watcheds do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :movie, index: true

  	add_column :movies, :name, :string
    add_column :users, :name, :string
      t.timestamps
    end
  end
end
