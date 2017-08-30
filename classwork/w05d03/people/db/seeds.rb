# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all

people = Person.create ([
    {name: 'Richard ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},
    {name: 'Richard2 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},
    {name: 'Richard3 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},
    {name: 'Richard4 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},
    {name: 'Richard5 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},
    {name: 'Richard6 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},
    {name: 'Richard7 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},
    {name: 'Richard8 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},    
    {name: 'Richard9 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'},
    {name: 'Richard0 ', age: 82, job:'Dev', pay: 100, password:'boo', gender: 'male'}
])
