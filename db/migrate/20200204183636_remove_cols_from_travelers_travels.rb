# frozen_string_literal: true

class RemoveColsFromTravelersTravels < ActiveRecord::Migration[6.0]
  def change
    remove_column :travelers_travels, :auto
    remove_column :travelers_travels, :parking_reserved
  end
end
