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

ActiveRecord::Schema.define(version: 20170209170639) do

  create_table "devoirs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interrogations", force: :cascade do |t|
    t.integer  "travaux_dirige_id"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.float    "note"
    t.index ["travaux_dirige_id"], name: "index_interrogations_on_travaux_dirige_id"
    t.index ["user_id"], name: "index_interrogations_on_user_id"
  end

  create_table "lab_teachers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_lab_teachers_on_group_id"
    t.index ["user_id"], name: "index_lab_teachers_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_members_on_group_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "note_devoirs", force: :cascade do |t|
    t.integer  "devoir_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "note"
    t.index ["devoir_id"], name: "index_note_devoirs_on_devoir_id"
    t.index ["user_id"], name: "index_note_devoirs_on_user_id"
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "seance_laboratoire_id"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["seance_laboratoire_id"], name: "index_participations_on_seance_laboratoire_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "seance_laboratoires", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theory_teachers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_theory_teachers_on_group_id"
    t.index ["user_id"], name: "index_theory_teachers_on_user_id"
  end

  create_table "travaux_diriges", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
