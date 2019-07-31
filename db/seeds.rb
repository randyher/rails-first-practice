# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CatSitter.destroy_all
Cat.destroy_all

ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cats'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cat_sitters'")

one = CatSitter.create(name: "Jon", age: 26)
two = CatSitter.create(name: "Dany", age: 22)
three = CatSitter.create(name: "Robert", age: 25)
four = CatSitter.create(name: "Theo", age: 18)

Cat.create(name: "Theo", fur_color: "Red", cat_sitter: one)
Cat.create(name: "Nana", fur_color: "Gold", cat_sitter: one)
Cat.create(name: "Lala", fur_color: "Black", cat_sitter: two)
Cat.create(name: "Mama", fur_color: "Brown", cat_sitter: two)
Cat.create(name: "Shot", fur_color: "Brown", cat_sitter: three)
Cat.create(name: "Runny", fur_color: "Brown", cat_sitter: three)
Cat.create(name: "Rabbit", fur_color: "Red", cat_sitter: four)
Cat.create(name: "Turtle", fur_color: "White", cat_sitter: four)
