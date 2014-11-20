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

ActiveRecord::Schema.define(version: 20140507050056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affinities", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "affinities_herbs", id: false, force: true do |t|
    t.integer "affinity_id"
    t.integer "herb_id"
  end

  create_table "clinical_actions", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clinical_actions_herbs", id: false, force: true do |t|
    t.integer "clinical_action_id"
    t.integer "herb_id"
  end

  create_table "flavors", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foundational_actions", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foundational_actions_herbs", id: false, force: true do |t|
    t.integer "foundational_action_id"
    t.integer "herb_id"
  end

  create_table "herbs", force: true do |t|
    t.string   "common_name"
    t.string   "latin_name"
    t.integer  "heat_cool"
    t.integer  "relax_tone"
    t.integer  "moisten_dry"
    t.integer  "flavor_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
