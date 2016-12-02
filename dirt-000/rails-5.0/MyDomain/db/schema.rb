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

ActiveRecord::Schema.define(version: 20161202212647) do

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

end
