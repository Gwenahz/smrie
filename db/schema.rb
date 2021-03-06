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

ActiveRecord::Schema.define(version: 20160629131705) do

  create_table "admins", force: true do |t|
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "commandes", force: true do |t|
    t.string   "modele"
    t.string   "panne"
    t.decimal  "prix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "couleurs", force: true do |t|
    t.string   "couleur"
    t.integer  "smartphone"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "adresse"
    t.string   "ville"
    t.string   "date"
    t.string   "heure"
    t.string   "compladresse"
    t.string   "entreprise"
    t.string   "typeform"
    t.string   "commentaire"
    t.integer  "idstock"
    t.integer  "prix"
    t.string   "promocode"
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

  create_table "orders", force: true do |t|
    t.string   "marque"
    t.string   "modele"
    t.string   "panne"
    t.string   "couleur"
    t.decimal  "prix"
    t.date     "date_reparation"
    t.string   "heure_reparation"
    t.boolean  "bureau"
    t.string   "entreprise"
    t.text     "adresse"
    t.text     "adresse2"
    t.string   "cp"
    t.string   "ville"
    t.string   "prenom"
    t.string   "nom"
    t.string   "numtel"
    t.string   "email"
    t.string   "code_reparation"
    t.string   "statut"
    t.boolean  "paye"
    t.string   "reparateur"
    t.text     "commentaire"
    t.string   "demande_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "note"
    t.string   "promocode"
    t.string   "date"
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

  create_table "prices", force: true do |t|
    t.integer  "id_smartphone"
    t.integer  "id_panne"
    t.decimal  "prix"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock"
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

  create_table "webcallbacks", force: true do |t|
    t.string   "numtel"
    t.string   "modele"
    t.string   "panne"
    t.string   "cp"
    t.string   "email"
    t.boolean  "sms"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "conseiller"
  end

end
