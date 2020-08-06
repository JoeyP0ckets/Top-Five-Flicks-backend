class CreateWatchlistMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :watchlist_movies do |t|
      t.string :imdb_id
      t.string :poster
      t.string :title
      t.string :year
      t.references :watchlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
