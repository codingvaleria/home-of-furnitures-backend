# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱️ seeding..."

products = Product.create([
    {name: "Chairs", category: "Living-Room", price:35995, description:"Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.", image:"https://unsplash.com/photos/feijc-nqWKM"},
    {name: "Chest", category: "Dining-Room", price:75900, description:"Dolores quis quia ad quo voluptates. Maxime delectus totam numquam. Necessitatibus vel atque qui dolore." "Id neque nemo. Dolores iusto facere est ad. Accusamus ipsa dolor ut." "Et officiis ut hic. Sunt asperiores minus distinctio debitis ipsa dolor. Minima eos deleniti.", image:"https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"},
    {name: "Rest Arm Chairs", category: "Living-Room", price:25995, description:"Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.", image:"https://plus.unsplash.com/premium_photo-1663013668671-d453f319544f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"},
    {name: "Carvel Green Bed", category: "Bedroom", price:89456, description:"Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.", image:"https://images.unsplash.com/photo-1615874959474-d609969a20ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmVkcm9vbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"},
    {name: "Chairs", category: "Living-Room", price:35995, description:"Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.", image:"https://unsplash.com/photos/feijc-nqWKM"},
    {name: "Chest", category: "Dining-Room", price:75900, description:"Dolores quis quia ad quo voluptates. Maxime delectus totam numquam. Necessitatibus vel atque qui dolore." "Id neque nemo. Dolores iusto facere est ad. Accusamus ipsa dolor ut." "Et officiis ut hic. Sunt asperiores minus distinctio debitis ipsa dolor. Minima eos deleniti.", image:"https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"},
    {name: "Rest Arm Chairs", category: "Living-Room", price:25995, description:"Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.", image:"https://plus.unsplash.com/premium_photo-1663013668671-d453f319544f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"},
    {name: "Carvel Green Bed", category: "Bedroom", price:89456, description:"Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.", image:"https://images.unsplash.com/photo-1615874959474-d609969a20ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmVkcm9vbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"}
])

users = User.create(username:"admin", password:"1234", password_confirmation:"1234")

puts "🍂️ done seeding.."