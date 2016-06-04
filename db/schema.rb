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

ActiveRecord::Schema.define(version: 20160529011836) do

  create_table "bairros", force: :cascade do |t|
    t.string   "nome_bairro"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "chamados", force: :cascade do |t|
    t.string "grupo_servico"
    t.string "servico"
    t.string "logradouro"
    t.string "bairro"
    t.string "situacao"
    t.date   "data_demanda"
    t.date   "data_update"
  end

  create_table "logradouros", force: :cascade do |t|
    t.string   "nome_logradouro"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "monitorandos", force: :cascade do |t|
    t.integer  "id_user"
    t.integer  "id_chamado"
    t.string   "bairro"
    t.string   "logradouro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
