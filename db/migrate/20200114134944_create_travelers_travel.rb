# frozen_string_literal: true

class CreateTravelersTravel < ActiveRecord::Migration[6.0]
  def change
    create_table :travelers_travels do |t|
      t.references :traveler, null: false
      t.references :travel, null: false
      t.boolean :auto, null: false, default: false
      t.boolean :parking_reserved, null: false, default: false
    end
  end
end
