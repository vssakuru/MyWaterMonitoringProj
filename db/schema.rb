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

ActiveRecord::Schema.define(version: 2018_04_25_013511) do

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_confirmed"
    t.string "confirm_token"
    t.string "user_type", null: false
    t.integer "mobile_number", null: false
    t.string "email", null: false
    t.string "name", null: false
  end

  create_table "water_levels", force: :cascade do |t|
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waterdata", force: :cascade do |t|
    t.string "beach_name"
    t.string "measurement_timestamp"
    t.float "water_temperature"
    t.float "turbidity"
    t.float "transducer_depth"
    t.float "wave_height"
    t.integer "wave_period"
    t.float "battery_life"
    t.string "measurement_timestamp_label"
    t.string "measurement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
