class CreateUserAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :user_amenities do |t|
      t.references :user, foreign_key: true
      t.references :amenity, foreign_key: true

      t.timestamps
    end
  end
end
