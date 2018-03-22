class PokemonsController < ApplicationController
  def capture
    to_capture = Pokemon.find(params[:id])
    to_capture.trainer = current_trainer
    to_capture.save
    redirect_to root_path
  end
end
