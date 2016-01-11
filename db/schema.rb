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

ActiveRecord::Schema.define(version: 20160106144807) do

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["unlock_token"], name: "index_admins_on_unlock_token", unique: true

  create_table "disponibilites", force: true do |t|
    t.boolean  "amlundi"
    t.boolean  "pmlundi"
    t.boolean  "slundi"
    t.boolean  "ammardi"
    t.boolean  "pmmardi"
    t.boolean  "smardi"
    t.boolean  "ammercredi"
    t.boolean  "pmmercredi"
    t.boolean  "smercredi"
    t.boolean  "amjeudi"
    t.boolean  "pmjeudi"
    t.boolean  "sjeudi"
    t.boolean  "amvendredi"
    t.boolean  "pmvendredi"
    t.boolean  "svendredi"
    t.boolean  "amsamedi"
    t.boolean  "pmsamedi"
    t.boolean  "ssamedi"
    t.boolean  "amdimanche"
    t.boolean  "pmdimanche"
    t.boolean  "sdimanche"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "helps", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "cp"
    t.string   "modele"
    t.string   "panne"
    t.string   "mail"
    t.string   "numtel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "attribuer"
  end

  create_table "infos", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "adresse"
    t.string   "cp"
    t.string   "ville"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "numtel"
    t.string   "adressebis"
  end

  create_table "pannes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "reparations", force: true do |t|
    t.string   "id_user"
    t.string   "id_smartphone"
    t.string   "id_panne"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secteurs", force: true do |t|
    t.string   "ville"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "near"
  end

  create_table "smartphones", force: true do |t|
    t.string   "marque"
    t.string   "modele"
    t.string   "couleur"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "stocks", force: true do |t|
    t.integer  "id_smartphone"
    t.integer  "id_panne"
    t.decimal  "prix"
    t.integer  "stock"
    t.string   "couleur"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "prenom"
    t.string   "idphones"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
