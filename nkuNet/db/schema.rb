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

ActiveRecord::Schema.define(version: 20170310030244) do

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "Majors"
    t.text     "description"
    t.string   "course_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["Majors"], name: "index_courses_on_Majors"
  end

  create_table "enrolled_classes", force: :cascade do |t|
    t.integer  "Logins"
    t.integer  "Courses"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Courses"], name: "index_enrolled_classes_on_Courses"
    t.index ["Logins"], name: "index_enrolled_classes_on_Logins"
  end

  create_table "login_types", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "LoginTypes"
    t.boolean  "active_flag"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["LoginTypes"], name: "index_logins_on_LoginTypes"
  end

  create_table "majors", force: :cascade do |t|
    t.integer  "Colleges"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["Colleges"], name: "index_majors_on_Colleges"
  end

  create_table "q_and_as", force: :cascade do |t|
    t.integer  "Logins"
    t.integer  "rating"
    t.boolean  "active_flag"
    t.text     "q_a_text"
    t.date     "create_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["Logins"], name: "index_q_and_as_on_Logins"
  end

end
