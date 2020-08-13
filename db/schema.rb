# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_11_001358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.string "imdb_id"
    t.string "title"
    t.string "year"
    t.text "directing"
    t.text "acting"
    t.text "cinematography"
    t.text "art_direction"
    t.text "soundtrack"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "top_fives", force: :cascade do |t|
    t.string "category"
    t.string "titleOne"
    t.string "titleTwo"
    t.string "titleThree"
    t.string "titleFour"
    t.string "titleFive"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_top_fives_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watchlist_movies", force: :cascade do |t|
    t.string "imdb_id"
    t.string "poster"
    t.string "title"
    t.string "year"
    t.bigint "watchlist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["watchlist_id"], name: "index_watchlist_movies_on_watchlist_id"
  end

  create_table "watchlists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_watchlists_on_user_id"
  end

  add_foreign_key "reviews", "users"
  add_foreign_key "top_fives", "users"
  add_foreign_key "watchlist_movies", "watchlists"
  add_foreign_key "watchlists", "users"
end
# {"top_five"=>{"category"=>"Star Wars Flicks", "titleOne"=>"Empire Strikes Back", "titleTwo"=>"A New Hope", "titleThree"=>"Return of the Jedi", "titleFour"=>"Rogue One", "titleFive"=>"Clone Wars", "user_id"=>64}}