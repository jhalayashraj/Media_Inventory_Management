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

ActiveRecord::Schema.define(version: 20180211181023) do

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id"
    t.string "message"
    t.integer "purchased_slot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchased_slot_id"], name: "index_notifications_on_purchased_slot_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "purchased_slots", force: :cascade do |t|
    t.integer "user_id"
    t.integer "resale_timeslot_id"
    t.string "card_last_four"
    t.string "card_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resale_timeslot_id"], name: "index_purchased_slots_on_resale_timeslot_id"
    t.index ["user_id"], name: "index_purchased_slots_on_user_id"
  end

  create_table "resale_timeslots", force: :cascade do |t|
    t.integer "timeslot_id"
    t.integer "user_id"
    t.float "slot_duration"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["timeslot_id"], name: "index_resale_timeslots_on_timeslot_id"
    t.index ["user_id"], name: "index_resale_timeslots_on_user_id"
  end

  create_table "timeslots", force: :cascade do |t|
    t.integer "user_id"
    t.float "duration"
    t.float "price"
    t.float "frequency"
    t.boolean "status", default: true
    t.integer "on_resale", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone_number"
    t.integer "role", default: 2
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
