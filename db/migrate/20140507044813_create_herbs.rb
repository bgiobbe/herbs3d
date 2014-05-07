class CreateHerbs < ActiveRecord::Migration
  def change
    create_table :herbs do |t|
      t.string :common_name
      t.string :latin_name
      t.integer :heat_cool
      t.integer :relax_tone
      t.integer :moisten_dry
      t.text :notes

      t.timestamps
    end
  end
end
