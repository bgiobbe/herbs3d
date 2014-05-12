class CreateFoundationalActions < ActiveRecord::Migration
  def change
    create_table :foundational_actions do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
    create_table :foundational_actions_herbs, id: false do |t|
      t.belongs_to :foundational_action
      t.belongs_to :herb
    end
  end
end
