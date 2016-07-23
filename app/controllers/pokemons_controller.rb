class PokemonsController < ApplicationController
  def index
    render json: Pokemon.all.to_json(include: :likes, methods: :like_count), status: 200
  end

  def show
    if Pokemon.exists?(params[:id])
      render json: Pokemon.find(params[:id]).to_json, status: 200
    else
      render json: { message: "Not Found" }, status: 400
    end
  end

  def edit
  end

  def create
      pokemon = Pokemon.new(pokemon_params)

    if pokemon.save
      render json: pokemon.to_json, status: 200
    else
      render json: pokemon.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
    pokemon = Pokemon.find(params[:id])
    if pokemon.update(pokemon_params)
      render json: pokemon
    else
      render json: pokemons.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
    if Pokemon.exists?(params[:id])
      Pokemon.destroy(params[:id])
      render json: { message: "Pokemon destroyed." }, status: 200
    else
      render json: { message: "Pokemon not found." }, status: 400
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :types, :height, :weight)
  end
end
