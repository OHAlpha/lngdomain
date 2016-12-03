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

ActiveRecord::Schema.define(version: 20161203171808) do

  create_table "access_user_colors", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "color"
    t.string   "ctyp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_access_user_colors_on_user_id"
  end

  create_table "access_user_queues", force: :cascade do |t|
    t.string   "unom"
    t.string   "email"
    t.string   "salt"
    t.integer  "iterations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "access_users", force: :cascade do |t|
    t.string   "unom"
    t.string   "email"
    t.string   "client_salt"
    t.string   "server_salt"
    t.integer  "iterations"
    t.string   "passhash"
    t.string   "fnom"
    t.string   "mnoms"
    t.string   "lnom"
    t.string   "dnom"
    t.integer  "state"
    t.string   "status"
    t.text     "details"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "one_wolf_services_games", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.text     "rules"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "wof_category_puzzles", force: :cascade do |t|
    t.integer  "puzzle_category_id"
    t.integer  "puzzle_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["puzzle_category_id"], name: "index_wof_category_puzzles_on_puzzle_category_id"
    t.index ["puzzle_id"], name: "index_wof_category_puzzles_on_puzzle_id"
  end

  create_table "wof_game_actions", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "game_puzzle_id"
    t.integer  "game_user_id"
    t.string   "kind"
    t.integer  "score"
    t.text     "details"
    t.integer  "sequence"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["game_id"], name: "index_wof_game_actions_on_game_id"
    t.index ["game_puzzle_id"], name: "index_wof_game_actions_on_game_puzzle_id"
    t.index ["game_user_id"], name: "index_wof_game_actions_on_game_user_id"
  end

  create_table "wof_game_moderator_actions", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "game_puzzle_id"
    t.integer  "game_user_id"
    t.integer  "game_action_id"
    t.string   "kind"
    t.integer  "score"
    t.text     "details"
    t.integer  "sequence"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["game_action_id"], name: "index_wof_game_moderator_actions_on_game_action_id"
    t.index ["game_id"], name: "index_wof_game_moderator_actions_on_game_id"
    t.index ["game_puzzle_id"], name: "index_wof_game_moderator_actions_on_game_puzzle_id"
    t.index ["game_user_id"], name: "index_wof_game_moderator_actions_on_game_user_id"
  end

  create_table "wof_game_moderators", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_wof_game_moderators_on_game_id"
    t.index ["user_id"], name: "index_wof_game_moderators_on_user_id"
  end

  create_table "wof_game_players", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.integer  "position"
    t.integer  "score"
    t.integer  "state"
    t.string   "status"
    t.text     "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_wof_game_players_on_game_id"
    t.index ["user_id"], name: "index_wof_game_players_on_user_id"
  end

  create_table "wof_game_puzzles", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "puzzle_id"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_wof_game_puzzles_on_game_id"
    t.index ["puzzle_id"], name: "index_wof_game_puzzles_on_puzzle_id"
  end

  create_table "wof_games", force: :cascade do |t|
    t.string   "name"
    t.integer  "sequence"
    t.integer  "state"
    t.string   "status"
    t.text     "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wof_puzzle_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "wof_puzzle_words", force: :cascade do |t|
    t.integer  "puzzle_id"
    t.string   "word"
    t.string   "orientation"
    t.integer  "row"
    t.integer  "column"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["puzzle_id"], name: "index_wof_puzzle_words_on_puzzle_id"
  end

  create_table "wof_puzzles", force: :cascade do |t|
    t.string   "puzzle"
    t.string   "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
