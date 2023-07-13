class Api::PokemonController < ApplicationController
    
    def types
        types = Pokemon::TYPES
        render json: types
    end

    def index
        @pokemons = Pokemon.all
        render :index
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id])
        if @pokemon.save
            render :show
        else
            @pokemon.errors.full_messages
        end

    end

    def pokemon_params
        params.require(:pokemon).permit(:image_url, :name, :number, :attack, :poke_type, :captured)
    end

end
