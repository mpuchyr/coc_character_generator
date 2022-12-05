class AddBuildToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :build, :integer
  end
end
