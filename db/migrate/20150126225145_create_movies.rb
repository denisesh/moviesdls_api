class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :plot
      t.integer :year
      t.string :image_url

    end
  end
end
