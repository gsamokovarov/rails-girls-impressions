class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :city, null: false
      t.string :country, null: false

      t.date :starts_at, null: false
      t.date :ends_at, null: false

      t.timestamps
    end
  end
end
