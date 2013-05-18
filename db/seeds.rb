%w[
  Organizer
  Coach
  Pupil
].each do |role_name|
  Role.find_or_create_by_name(role_name)
end
