class PokemonsController < ApplicationController
  def capture
    to_capture = Pokemon.find(params[:id])
    to_capture.trainer = current_trainer
    to_capture.save
    redirect_to root_path
  end

  def damage
    to_damage = Pokemon.find(params[:id])
    to_damage.health = to_damage.health - 10
    to_damage.save
    if to_damage.health <= 0
      to_damage.destroy
    end
    redirect_to trainer_path(current_trainer)
  end
end
