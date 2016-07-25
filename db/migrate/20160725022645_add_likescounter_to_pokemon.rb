class AddLikescounterToPokemon < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :likes_counter, :integer
  end
end
