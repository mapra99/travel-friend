# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_200_204_184_110) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'travelers', force: :cascade do |t|
    t.string 'username', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'first_name'
    t.string 'last_name'
    t.index ['username'], name: 'index_travelers_on_username', unique: true
  end

  create_table 'travelers_travels', force: :cascade do |t|
    t.bigint 'traveler_id', null: false
    t.bigint 'travel_id', null: false
    t.index ['travel_id'], name: 'index_travelers_travels_on_travel_id'
    t.index ['traveler_id'], name: 'index_travelers_travels_on_traveler_id'
  end

  create_table 'travels', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.integer 'auto_id'
  end
end
