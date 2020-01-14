# frozen_string_literal: true

class AddNameToTravelers < ActiveRecord::Migration[6.0]
  def change
    add_column :travelers, :first_name, :string
    add_column :travelers, :last_name, :string
  end
end
