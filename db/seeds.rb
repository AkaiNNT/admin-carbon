# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Create admin"
unless Administrator.any?
  Administrator.create(
    email: "admin@vinova.sg",
    password: "vinova123"
  )
end


school_names = ["Admiralty Secondary School", "Ahmad Ibrahim Secondary School", "Anderson Secondary School", "Anglican High School", "Anglo-Chinese School (Barker Road)", "Anglo-Chinese School (Independent)", "Ang Mo Kio Secondary School"]
puts "Create School"
unless School.any?
  school_names.each do |s|
  	School.create(
    	name: s,
    	number_of_students: rand(200..2000)
  	)
  end
end


