require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  setup do
    load_seed_data
  end

  test 'available roles' do
    assert Role.find_by(name: 'Organizer'), 'Organizer role should exist'
    assert Role.find_by(name: 'Coach'), 'Coach role should exist'
    assert Role.find_by(name: 'Pupil'), 'Pupil role should exist'
  end

  test 'can not have duplicate roles' do
    assert_raises ActiveRecord::RecordInvalid do
      Role.create! name: 'Organizer'
    end
  end
end
