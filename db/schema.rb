# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181102210043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "castings", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_castings_on_actor_id"
    t.index ["movie_id"], name: "index_castings_on_movie_id"
  end

  create_table "directors_movies", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "director_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["director_id"], name: "index_directors_movies_on_director_id"
    t.index ["movie_id"], name: "index_directors_movies_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "release_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "aliases"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producers_movies", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "producer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_producers_movies_on_movie_id"
    t.index ["producer_id"], name: "index_producers_movies_on_producer_id"
  end

  add_foreign_key "castings", "movies"
  add_foreign_key "castings", "people", column: "actor_id"
  add_foreign_key "directors_movies", "movies"
  add_foreign_key "directors_movies", "people", column: "director_id"
  add_foreign_key "producers_movies", "movies"
  add_foreign_key "producers_movies", "people", column: "producer_id"
end
