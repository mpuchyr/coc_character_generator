class AddNameToCampaigns < ActiveRecord::Migration[7.0]
  def change
    add_column :campaigns, :name, :string
  end
end
