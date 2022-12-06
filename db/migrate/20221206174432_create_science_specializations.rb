class CreateScienceSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :science_specializations do |t|
      t.string :name

      t.timestamps
    end
  end
end
