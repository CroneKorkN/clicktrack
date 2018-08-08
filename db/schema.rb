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

ActiveRecord::Schema.define(version: 2018_08_08_230712) do

  create_table "activities", force: :cascade do |t|
    t.datetime "finished_at"
    t.integer "button_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["button_id"], name: "index_activities_on_button_id"
    t.index ["finished_at"], name: "index_activities_on_finished_at"
  end

  create_table "buttons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_buttons_on_name"
  end

end
