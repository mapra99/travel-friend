# frozen_string_literal: true

class Traveler < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable

  validates :username, uniqueness: true

  has_many :travelers_travels
  has_many :travels, through: :travelers_travels
end
