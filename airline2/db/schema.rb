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

ActiveRecord::Schema.define(version: 20170221171859) do

  create_table "airports", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "departure_airport_id"
    t.integer  "arrival_airport_id"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.integer  "plane_id"
    t.integer  "pilot_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "flights", ["pilot_id"], name: "index_flights_on_pilot_id"
  add_index "flights", ["plane_id"], name: "index_flights_on_plane_id"

  create_table "passengers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pilots", force: :cascade do |t|
    t.integer  "airport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pilots", ["airport_id"], name: "index_pilots_on_airport_id"

  create_table "planes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "airport_id"
  end

  add_index "planes", ["airport_id"], name: "index_planes_on_airport_id"

  create_table "seats", force: :cascade do |t|
    t.integer  "plane_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seats", ["plane_id"], name: "index_seats_on_plane_id"

  create_table "tickets", force: :cascade do |t|
    t.integer  "flight_id"
    t.integer  "passenter_id"
    t.integer  "seat_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tickets", ["flight_id"], name: "index_tickets_on_flight_id"
  add_index "tickets", ["passenter_id"], name: "index_tickets_on_passenter_id"
  add_index "tickets", ["seat_id"], name: "index_tickets_on_seat_id"

end
