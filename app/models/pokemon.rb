class Pokemon < ApplicationRecord
  validates :name, presence: true
  validates :types, presence: true
  validates :height, presence: true
  validates :weight, presence: true

  has_many :likes

  # def self.top
  #   joins("join likes on like.pokemon_id = pokemons.id")
  #   .group("pokemons.id, pokemons.name")
  #   .order("count(like.id) desc")
  # end

end
