class CreateWhiskeys < ActiveRecord::Migration
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :region
      t.string :country
      t.string :type
      t.string :malt
      t.integer :age
      t.integer :price
      t.float :abv
      t.string :pic1
      t.references :event, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
