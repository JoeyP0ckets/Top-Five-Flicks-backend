class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :imdb_id
      t.string :title
      t.string :year
      t.text :directing
      t.text :acting
      t.text :cinematography
      t.text :art_direction
      t.text :soundtrack
      t.text :overall
      t.integer :user_rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
