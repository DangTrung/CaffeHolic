# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category= Category.create!([{ name: 'Arabica'}, { name: ' Robusta '}, {name: 'Liberica'}])
product = Product.create!([{name: 'Coffe Holic', price: 140000, image: 'roastey.png', description: 'it mix 50% Arabica beans and 50% Robusta'},
    {name: 'Coffe Love', price: 140000, image: 'w3.png', description: 'it mix 50% Arabica beans and 50% Liberica'},
    {name: 'Coffe Men', price: 200000, image: 'w10.png', description: 'it mix 50% Arabica beans and 50% Robusta'}])
categoryproduct = ObjectCategory.create!([{ category_id:1, object_id: 1}, { category_id: 2, object_id: 1}, { category_id:1, object_id: 2},
    { category_id:3, object_id: 2}, { category_id:1, object_id: 3}, { category_id:2, object_id: 3}])