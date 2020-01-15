# frozen_string_literal: true

class TravelsController < ApplicationController
  before_action :authenticate_traveler!

  def new
    @travelers = Traveler.all
  end

  def create
    travel = Travel.create
    (0...traveler_params[:traveler_name].length).each do |i|
      next if traveler_params[:traveler_name][i] == '0'

      traveler = travel.travelers_travels.build
      traveler.traveler_id = traveler_params[:traveler_name][i]
      traveler.auto = true unless traveler_params[:traveler_auto][i] == '0'
      traveler.parking_reserved = true unless traveler_params[:traveler_parking][i] == '0'

      traveler.save
    end
    flash[:success]="Viaje Registrado"
    redirect_to travels_path
  end

  def index
    @travels = Travel.all
  end

  def destroy
    travel = Travel.find_by_id(params[:id])
    travel&.destroy

    flash[:success]= "Viaje borrado"
    redirect_to travels_path
  end

  private

  def traveler_params
    params.require(:new_travel)
  end
end
