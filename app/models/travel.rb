# frozen_string_literal: true

class Travel < ApplicationRecord
  has_many :travelers_travels
  has_many :travelers, through: :travelers_travels
end
