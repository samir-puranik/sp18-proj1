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

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    @pokemon.trainer = current_trainer
    @pokemon.health = 100
    @pokemon.level = 1
    if @pokemon.save
      redirect_to trainer_path(current_trainer)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end

  def errors
  end

  private
    def pokemon_params
      params.require(:pokemon).permit(:name, :ndex)
    end

end
