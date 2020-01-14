# frozen_string_literal: true

class TravelersTravel < ApplicationRecord
  belongs_to :traveler
  belongs_to :travel
end
