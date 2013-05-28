class EventParticipation < ActiveRecord::Base
  belongs_to :event
  belongs_to :participant
  belongs_to :role
end
