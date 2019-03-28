json.campaign do
  json.partial! 'api/campaigns/campaign', campaign: @campaign
end

json.players do
  @campaign.players.each do |player|
    json.set! player.id do
      json.partial! 'api/users/user', user: player
    end
  end
end

json.gm do
  json.set! @campaign.gm.id do
    json.partial! 'api/users/user', user: @campaign.gm
  end
end
