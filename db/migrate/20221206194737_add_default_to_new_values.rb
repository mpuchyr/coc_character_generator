class AddDefaultToNewValues < ActiveRecord::Migration[7.0]
  def change
    change_column :skills, :art_craft, :integer, default: 5
    change_column :skills, :language_other, :integer, default: 1
    change_column :skills, :science, :integer, default: 1
    change_column :skills, :survival, :integer, default: 10
  end
end
