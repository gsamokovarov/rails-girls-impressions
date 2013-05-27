class Role < ActiveRecord::Base
  validate :name, uniqueness: true
end
