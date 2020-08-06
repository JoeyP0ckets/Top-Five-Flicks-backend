class CreateTopFiveMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :top_five_movies do |t|
      t.string :imdb_id
      t.string :title
      t.references :top_five, null: false, foreign_key: true

      t.timestamps
    end
  end
end
