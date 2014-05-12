class CreateClinicalActions < ActiveRecord::Migration
  def change
    create_table :clinical_actions do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
    create_table :clinical_actions_herbs, id: false do |t|
      t.belongs_to :clinical_action
      t.belongs_to :herb
    end
  end
end
