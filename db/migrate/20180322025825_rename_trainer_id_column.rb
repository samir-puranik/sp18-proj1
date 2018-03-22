class RenameTrainerIdColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :pokemons, :trainer_id_id, :trainer_id
  end
end
