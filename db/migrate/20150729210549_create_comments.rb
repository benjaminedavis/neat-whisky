class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :member, index: true, foreign_key: true
      t.references :whiskey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
