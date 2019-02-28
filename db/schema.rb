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

ActiveRecord::Schema.define(version: 2019_02_28_191900) do

  create_table "airplanes", force: :cascade do |t|
    t.string "tail_number"
    t.integer "cruise_speed"
  end

  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
  end

  create_table "flights", force: :cascade do |t|
    t.integer "airplane_id"
    t.integer "pilot_id"
    t.integer "origin_airport_id"
    t.integer "destination_airport_id"
    t.date "date"
    t.boolean "flown", default: false
  end

  create_table "pilots", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
