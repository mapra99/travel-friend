# frozen_string_literal: true

class AddAutoIdToTravels < ActiveRecord::Migration[6.0]
  def change
    add_column :travels, :auto_id, :integer
  end
end
