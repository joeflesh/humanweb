# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# admin users.
[{
  :email => 'declan@humanwebsolutions.com',
  :password => 'pizzafactory',
  :password_confirmation => 'pizzafactory'
},{
  :email => 'jflesh@humanwebsolutions.com',
  :password => 'pizzafactory',
  :password_confirmation => 'pizzafactory'
}].each { |user| User.find_or_create_by_email user }
