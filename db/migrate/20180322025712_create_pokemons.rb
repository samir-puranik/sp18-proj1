class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :level
      t.references :trainer_id, foreign_key: true
      t.integer :ndex

      t.timestamps
    end
  end
end
