# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Category.destroy_all
User.destroy_all


neum 		= Category.create(name: 'Neumaticos')
pernos 		= Category.create(name: 'Pernos')

coke 		= User.create(name:'coke', email:'coke@mta.cl')
domitila	= User.create(name:'domitila', email:'domitila@mta.cl')

item1		= Item.create(serial:1, size:10, description: 'first item', category: neum, user:coke)
item2		= Item.create(serial:2, size:10, description: 'second item', category: neum, user:coke)
item3		= Item.create(serial:3, size:20, description: 'third item', category: neum, user:coke)
item4		= Item.create(serial:4, size:20, description: 'fourth item', category: pernos, user:domitila)
