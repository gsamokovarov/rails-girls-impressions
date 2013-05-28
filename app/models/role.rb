class Role < ActiveRecord::Base
  validates :name, uniqueness: true
end
