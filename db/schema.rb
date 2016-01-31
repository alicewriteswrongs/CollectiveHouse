# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160131144544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuties", force: :cascade do |t|
    t.string   "first_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cuties", ["first_name"], name: "index_cuties_on_first_name", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_time", null: false
    t.datetime "end_time",   null: false
    t.text     "event_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events", ["title"], name: "index_events_on_title", using: :btree

end
