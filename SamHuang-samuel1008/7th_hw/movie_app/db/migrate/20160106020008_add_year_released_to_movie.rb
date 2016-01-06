class AddYearReleasedToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :year_released, :integer
  end
end
