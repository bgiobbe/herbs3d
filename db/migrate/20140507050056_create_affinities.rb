class CreateAffinities < ActiveRecord::Migration
  def change
    create_table :affinities do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
    create_table :affinities_herbs, id: false do |t|
      t.belongs_to :affinity
      t.belongs_to :herb
    end
  end
end
