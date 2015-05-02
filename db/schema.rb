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

ActiveRecord::Schema.define(version: 20150502202044) do

  create_table "directors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graphic_artists", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musicians", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "instrument"
    t.string   "email_address"
    t.text     "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photographers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visual_artists", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "type"
    t.text     "phone_number"
    t.text     "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
