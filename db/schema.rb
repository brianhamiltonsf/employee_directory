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

ActiveRecord::Schema.define(version: 20150416050901) do

  create_table "departments", force: true do |t|
    t.string   "name"
    t.integer  "leader_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "departments", ["name"], name: "index_departments_on_name", unique: true

  create_table "employees", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone"
    t.string   "email"
    t.string   "office_number"
    t.string   "title"
    t.integer  "manager_id"
    t.boolean  "manager",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id"
    t.integer  "location_id"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.string   "slug"
    t.string   "avatar"
    t.string   "fullname"
  end

  add_index "employees", ["department_id"], name: "index_employees_on_department_id"
  add_index "employees", ["email"], name: "index_employees_on_email", unique: true
  add_index "employees", ["firstname"], name: "index_employees_on_firstname"
  add_index "employees", ["lastname"], name: "index_employees_on_lastname"
  add_index "employees", ["manager_id"], name: "index_employees_on_manager_id"
  add_index "employees", ["phone"], name: "index_employees_on_phone"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
