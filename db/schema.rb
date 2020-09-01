# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_01_001829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avatars", force: :cascade do |t|
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "video"
    t.integer "user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "type"
    t.integer "user_id"
    t.integer "job_id"
    t.integer "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "info"
    t.datetime "date"
    t.datetime "time"
    t.string "contact_person"
    t.string "email"
    t.string "link"
    t.boolean "saved"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "info"
    t.string "salary_starting_range"
    t.string "salary_highest_range"
    t.string "contact_person"
    t.string "email"
    t.string "phone"
    t.boolean "saved"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "goals"
    t.string "resume_link"
    t.string "avatar"
    t.string "website"
    t.string "contact"
    t.string "linked_in"
    t.string "twitter"
    t.boolean "open_to_connect"
    t.boolean "open_to_mentor"
    t.boolean "available_to_work"
    t.boolean "saved"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
