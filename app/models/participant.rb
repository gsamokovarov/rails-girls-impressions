class Participant < ActiveRecord::Base
  has_many :event_participations
  has_many :events, through: :event_participations
  has_many :roles, through: :event_participations

  def role_for(event)
    event_participations.where(event: event).take!.role
  end
end
