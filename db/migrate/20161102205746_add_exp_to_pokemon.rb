class AddExpToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :exp, :integer
  end
end
