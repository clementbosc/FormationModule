# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Devoir.create(name: "CC" )
Devoir.create(name: "CT" )

User.create(firstname: "John", lastname: "Lennon", email: "jl@beattles.org", numero: "num1")

User.create(firstname: "John", lastname: "Steed", email: "js@avengers.org", numero: "num2")

User.create(firstname: "John", lastname: "Runner", email: "jr@scots.org", numero: "num3")

User.create(firstname: "John", lastname: "English", email: "je@beettle.org", numero: "num4")

Group.create(name: "A1.1")
Group.create(name: "A1.2")
Group.create(name: "A2.1")
for i in 0..5
  TravauxDirige.create(name: "td", number: i)
  SeanceLaboratoire.create(name: "tp", number: i )
end


