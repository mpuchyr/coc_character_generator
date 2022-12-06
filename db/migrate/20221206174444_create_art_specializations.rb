class CreateArtSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :art_specializations do |t|
      t.string :name

      t.timestamps
    end
  end
end
