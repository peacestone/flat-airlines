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

ActiveRecord::Schema.define(version: 20170302162931) do

  create_table "flights", force: :cascade do |t|
    t.string  "departure_city"
    t.string  "arrival_city"
    t.integer "price"
    t.time    "departure_time"
    t.time    "arival_time"
    t.date    "date"
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "nationality"
    t.string   "credit_card_number"
    t.integer  "flat_air_miles"
    t.integer  "special_request_id_id"
    t.date     "date_of_birth"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_passengers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_passengers_on_reset_password_token", unique: true
    t.index ["special_request_id_id"], name: "index_passengers_on_special_request_id_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "flight_id"
    t.integer "passenger_id"
    t.index ["flight_id"], name: "index_reservations_on_flight_id"
    t.index ["passenger_id"], name: "index_reservations_on_passenger_id"
  end

end
