# frozen_string_literal: true

class CreateTravel < ActiveRecord::Migration[6.0]
  def change
    create_table :travels do |t|
      t.datetime :created_at, null: false, precision: 6
    end
  end
end
