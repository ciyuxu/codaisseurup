class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_type
      t.string :event_time
      t.string :event_location
      t.integer :event_accommodate
      t.text :event_description
      t.boolean :has_food
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end
