require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  setup do
    load_seed_data
  end

  test 'available roles' do
    assert Role.find_by_name('Organizer'), 'Organizer role should exist'
    assert Role.find_by_name('Coach'), 'Coach role should exist'
    assert Role.find_by_name('Pupil'), 'Pupil role should exist'
  end

  test 'can not have duplicate roles' do
    assert_raises ActiveRecord::RecordInvalid do
      Role.create! name: 'Organizer'
    end
  end
end
