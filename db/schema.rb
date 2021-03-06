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

ActiveRecord::Schema.define(version: 20140810132847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", id: false, force: true do |t|
    t.string  "phone_number"
    t.string  "language",     default: "English"
    t.boolean "subscribed",   default: false
    t.integer "total_sent",   default: 1
    t.string  "saved_stops",  default: [],        array: true
  end

  add_index "users", ["phone_number"], name: "index_users_on_phone_number", unique: true, using: :btree

end
