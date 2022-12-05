class AddSanToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :san, :integer
  end
end
