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

ActiveRecord::Schema.define(version: 20150608132900) do

  create_table "bills", force: :cascade do |t|
    t.text     "firstname"
    t.text     "lastname"
    t.text     "telephone"
    t.text     "email"
    t.text     "carmodel"
    t.text     "carnumber"
    t.text     "indate"
    t.text     "outdate"
    t.text     "operation1"
    t.text     "operation_1_amount"
    t.text     "operation2"
    t.text     "operation_2_amount"
    t.text     "operation3"
    t.text     "operation_3_amount"
    t.text     "operation4"
    t.text     "operation_4_amount"
    t.text     "operation5"
    t.text     "operation_5_amount"
    t.text     "total"
    t.boolean  "status",             default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
