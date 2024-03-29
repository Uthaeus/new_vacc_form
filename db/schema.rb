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

ActiveRecord::Schema.define(version: 20180627173817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "discussion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discussion_id"], name: "index_comments_on_discussion_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_discussions_on_user_id"
  end

  create_table "form_images", force: :cascade do |t|
    t.text "main_image"
    t.bigint "user_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_forms_id"
    t.index ["user_form_id"], name: "index_form_images_on_user_form_id"
    t.index ["user_forms_id"], name: "index_form_images_on_user_forms_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "marker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_forms", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_forms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "roles"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccinations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vaccs", force: :cascade do |t|
    t.string "title"
    t.date "rec"
    t.date "exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_form_id"
    t.bigint "user_forms_id"
    t.index ["user_form_id"], name: "index_vaccs_on_user_form_id"
    t.index ["user_forms_id"], name: "index_vaccs_on_user_forms_id"
  end

  add_foreign_key "comments", "discussions"
  add_foreign_key "comments", "users"
  add_foreign_key "discussions", "users"
  add_foreign_key "form_images", "user_forms", column: "user_forms_id"
  add_foreign_key "user_forms", "users"
  add_foreign_key "vaccs", "user_forms", column: "user_forms_id"
end
