class PokemonsController < ApplicationController
  def index
    render json: Pokemon.all, status: 200
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
    pokemon = Pokemon.find(params[:id])
    if pokemon
      if authenticate_token?(params.fetch(browser_auth_token))
        render json: pokemon.destroy
        render json: "Pokemon Destroyed"
      else
        render json: { message: "You are not allowed to do this"}, status: 401
      end
    else
      render json: { message: "This pokemon does not exists"}
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :types, :height, :weight)
  end
end
