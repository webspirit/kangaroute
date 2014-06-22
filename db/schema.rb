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

ActiveRecord::Schema.define(version: 20140622021537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "routes", force: true do |t|
    t.string   "departure_address"
    t.string   "arrival_address"
    t.decimal  "departure_lat",            precision: 18, scale: 12
    t.decimal  "departure_lng",            precision: 18, scale: 12
    t.decimal  "arrival_lat",              precision: 18, scale: 12
    t.decimal  "arrival_lng",              precision: 18, scale: 12
    t.float    "departure_distance_range"
    t.float    "arrival_distance_range"
    t.datetime "start_time"
    t.datetime "time_range_from"
    t.datetime "time_range_to"
    t.boolean  "active"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "routes", ["user_id"], name: "index_routes_on_user_id", using: :btree

end
