# frozen_string_literal: true

class TravelsController < ApplicationController
  def new
    @travelers = Traveler.all
  end

  def create
    byebug
  end
end
