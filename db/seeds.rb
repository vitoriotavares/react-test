# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.create([{ description: 'Task 1', done: false }, { description: 'Task 2',  done: false }, { description: 'Task 3', done: false }])
User.create(name: 'vitorio', username: 'norbdus', email: 'norbdus@gmail.com', password: '12345678')