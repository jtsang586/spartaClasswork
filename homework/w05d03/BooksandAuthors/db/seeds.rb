# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
authors = Author.create ([
    {name:'Stephen King'},
    {name: 'Terry Pratchett'},
    {name: 'Arthur C Clark'},
    {name: 'JK Rowling'},
    {name: 'J R R Tolkien'}
])

books = Book.create ([
    {title: "Harry Potter: Philosopher's stone", author_name:'JK Rowling', author_id:4},
    {title: "The Hobbit", author_name:'J R R Tolkien', author_id:5},
    {title: "The Fellowship of the Ring", author_name:'J R R Tolkien', author_id:5},
    {title: "Guards, Guards, Guards", author_name:'Terry Pratchett', author_id:2},
    {title:"2010: Odyssey Two", author_name:"", author_id:3},
    {title:"Night Watch", author_name:"", author_id:2}
])