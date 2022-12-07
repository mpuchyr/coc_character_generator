class AddCharactersCampaignIdToCampaignsAndRemoveCharacterId < ActiveRecord::Migration[7.0]
  def change
    remove_column :campaigns, :character_id
    add_column :campaigns, :characters_campaign_id, :integer
  end
end
