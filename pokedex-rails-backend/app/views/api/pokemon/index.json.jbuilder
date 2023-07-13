@pokemons.each do |pokemon|
    if !pokemon.captured 
        pokemon.image_url = '/images/unknown.png'
    end
end

json.array! @pokemons, :id, :number, :name, :image_url, :captured