# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Meanings extension
Refinery::Meanings::Engine.load_seed

# Added by Refinery CMS Katas extension
Refinery::Katas::Engine.load_seed

# Added by Refinery CMS People extension
Refinery::People::Engine.load_seed

# Added by Refinery CMS Grades extension
Refinery::Grades::Engine.load_seed

# Added by Refinery CMS Stances extension
Refinery::Stances::Engine.load_seed
