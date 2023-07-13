if !@pokemon.captured
    pokemon.image_url = '/images/unknown.png'
end



json.extract! @pokemon, :id, :number, :attack, :defense, :name, :captured, :moves
@pokemon.moves.each do |move|
    json.moves move.name
end

# {
#   "imageUrl": "/images/pokemon_snaps/1.svg",
#   "id": 1,
#   "number": 1,
#   "attack": 49,
#   "defense": 49,
#   "name": "Bulbasaur",
#   "type": "grass",
#   "moves": [
#     "tackle",
#     "vine whip"
#   ],
#   "captured": true,
#   "createdAt": "2020-12-16T01:17:24.119Z",
#   "updatedAt": "2020-12-16T01:17:24.119Z"
# }