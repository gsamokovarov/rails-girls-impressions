class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first_name, null: false
      t.string :last_name,  null: false

      t.timestamps
    end
  end
end
