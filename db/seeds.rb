# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# 100.times do
#   Contact.create([{
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.free_email,
#     phone_number: Faker::PhoneNumber.phone_number
#   }])
# end

# contacts = Contact.all

# contacts.each do |contact|
#   id_from_user = User.all.sample.id
#   contact.update!(user_id: id_from_user)
# end

family = Group.create(name: "family")
family.save

friends = Group.create(name: "friends")
friends.save

business = Group.create(name: "business")
business.save




