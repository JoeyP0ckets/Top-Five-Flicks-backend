class CreateTopFives < ActiveRecord::Migration[6.0]
  def change
    create_table :top_fives do |t|
      t.string :category
      t.string :option_one
      t.string :option_two
      t.string :option_three
      t.string :option_four
      t.string :option_five
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
