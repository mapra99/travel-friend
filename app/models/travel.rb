# frozen_string_literal: true

class Travel < ApplicationRecord
  has_many :travelers_travels
  has_many :travelers, through: :travelers_travels
  belongs_to :auto, class_name: 'Traveler'

  default_scope -> { order(created_at: :desc) }
end
