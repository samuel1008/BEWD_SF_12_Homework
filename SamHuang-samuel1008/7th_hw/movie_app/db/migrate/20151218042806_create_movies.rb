class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
    	t.string :title
    	t.text :description
    	t.integer :year_released

    
    end
  end
end
