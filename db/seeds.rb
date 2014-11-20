# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

flavors = %w{ bitter sour pungent salty sweet }
flavors.each {|flavor| Flavor.find_or_create_by(name: flavor) }

foundational_actions = { 
#  { name:, notes: "" },
}
foundational_actions.each do |action|
  a = FoundationalAction.find_or_initialize_by(name: action.name)
  a.notes = action.notes
  a.save
end
