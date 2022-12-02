class AddIntToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :int, :integer
  end
end
