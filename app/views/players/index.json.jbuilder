json.array!(@players) do |player|
  json.extract! player, :id, :name, :level_number, :level_name, :crew_number, :crew_name, :games_played
  json.url player_url(player, format: :json)
end
