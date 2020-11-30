class CreateNeighborhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :neighborhoods do |t|
      t.text :description
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
