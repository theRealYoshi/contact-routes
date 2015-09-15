# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(username: "Anthony")
u2 = User.create(username: "Yoshi")
u3 = User.create(username: "Ned")

c1 = Contact.create(name: "Anthony", email: "ant.appacademy", user_id: u1.id)
c2 = Contact.create(name: "Yoshi", email: "yoshi.appacademy", user_id: u2.id)
c3 = Contact.create(name: "Ned", email: "ned.appacademy", user_id: u3.id)


ContactShare.create(user_id: u1.id, contact_id: c2.id )
ContactShare.create(user_id: u1.id, contact_id: c1.id )
ContactShare.create(user_id: u1.id, contact_id: c3.id )
ContactShare.create(user_id: u2.id, contact_id: c1.id )
ContactShare.create(user_id: u2.id, contact_id: c2.id )
