class Role < ActiveRecord::Base
  has_many :event_participations

  validates :name, uniqueness: true
end
