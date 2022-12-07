class CreateCharactersCampaigns < ActiveRecord::Migration[7.0]
  def change
    create_table :characters_campaigns do |t|
      t.integer :character_id
      t.integer :campaign_id

      t.timestamps
    end
  end
end
