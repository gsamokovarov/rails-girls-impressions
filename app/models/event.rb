class Event < ActiveRecord::Base
  has_many :event_participations
  has_many :participants, through: :event_participations
end
