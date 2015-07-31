class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :host
      t.string :theme
      t.text :description

      t.timestamps null: false
    end
  end
end
