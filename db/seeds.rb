# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

Devoir.create(name: "CC" )
Devoir.create(name: "CT" )

i=2017
CSV.foreach("db/users.csv") do |nom,prenom,role|
  break if nom.nil?
  p "#{prenom},#{nom},#{role}"
  newuser = User.new({ firstname: prenom, lastname: nom,
                       numero: "TA#{i}",
                       email: "#{prenom}.#{nom}@univ-tlse3.fr",
                       password: nom, password_confirmation: nom,
                       role: role.to_sym })
  # comme les mots de passe sont faibles
  newuser.save(validate: false)
  i = i + 1
end


Group.create(name: "A1.1")
Group.create(name: "A1.2")
Group.create(name: "A2.1")
for i in 0..5
  TravauxDirige.create(name: "td", number: i)
  SeanceLaboratoire.create(name: "tp", number: i )
end


