class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.references :owner, null: false, foreign_key: { to_table: :users}
      t.string :first_name
      t.string :last_name
      t.integer :str
      t.integer :con
      t.integer :siz
      t.integer :dex
      t.integer :app
      t.integer :pow
      t.integer :edu
      t.integer :luck
      t.integer :age
      t.string :damage_bonus
      t.integer :hp
      t.integer :mov
      t.string :pronoun
      t.string :max_sanity
      t.integer :occupation_id
      t.integer :mp

      t.timestamps
    end
  end
end
