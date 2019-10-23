# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'recipes')
Category.create(name: 'engineering')
Category.create(name: 'tvshows')
Category.create(name: 'movies')
Category.create(name: 'books')
Category.create(name: 'other')

Post.create(title: 'Cinnamon Bun', content: 'Yum', category_id: 1)
Post.create(title: 'So pro', content: 'yolololo', category_id: 2)
Post.create(title: 'Hello', content: 'world aaaa', category_id: 3)
