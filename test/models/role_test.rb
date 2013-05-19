require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  setup do
    load "#{Rails.root}/db/seeds.rb"
  end

  test 'available roles' do
    assert Role.find_by_name('Organizer'), 'Organizer role should exist'
    assert Role.find_by_name('Coach'), 'Coach role should exist'
    assert Role.find_by_name('Pupil'), 'Pupil role should exist'
  end
end
