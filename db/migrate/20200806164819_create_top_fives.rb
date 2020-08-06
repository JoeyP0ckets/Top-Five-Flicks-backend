class CreateTopFives < ActiveRecord::Migration[6.0]
  def change
    create_table :top_fives do |t|
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
