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

ActiveRecord::Schema.define(version: 20150620215949) do

  create_table "mags", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "logo"
    t.string   "titr1"
    t.text     "text1"
    t.string   "titr2"
    t.text     "text2"
    t.string   "titr3"
    t.text     "text3"
    t.string   "titr4"
    t.text     "text4"
    t.string   "modir"
    t.string   "sardabir"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
