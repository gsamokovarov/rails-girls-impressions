class CreateEventParticipations < ActiveRecord::Migration
  def change
    create_table :event_participations do |t|
      t.belongs_to :event
      t.belongs_to :participation
      t.references :role

      t.timestamps
    end
  end
end
