class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :summary
      t.text :cast
      t.string :category
      t.string :poster_url

      t.timestamps
    end
  end
end
