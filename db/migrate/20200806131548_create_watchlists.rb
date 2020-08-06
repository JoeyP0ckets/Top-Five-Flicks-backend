class CreateWatchlists < ActiveRecord::Migration[6.0]
  def change
    create_table :watchlists do |t|
      t.string :imdb_id
      t.string :poster_url
      t.string :title
      t.string :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
