class PokemonsController < ApplicationController
  def index
    render json: pokemon.all, status: 200
  end

  def show
    if Pokemon.exists?(params{pokemon_id})
      render Pokemon.all[pokemon.id].to_json, status: 200
    else
      render json: { message: "Not Found" }, status: 400
    end
  end

  def edit
  end

  def create
    Pokemon.new(id: params[:id])

    if Pokemon.save
      render json: pokemon.to_json, status: 200
    else
      render json: pokemon.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
    Pokemon.find (params[:id])
    if pokemon.update(pokemon_id: params[:pokemon_id], quantity: params[:quantity])
    else
      render json: pokemon.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
  end
end
