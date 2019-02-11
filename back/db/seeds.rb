# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
UserItem.destroy_all


ActiveRecord::Base.connection.tables.each do |t|
 ActiveRecord::Base.connection.reset_pk_sequence!(t)
end


Item.create!([
  {name: 'Lamp Bulb', price: 12.90, image: 'https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Problems', price: 10.90, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/1311590/pexels-photo-1311590.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Legendary', price: 9.90, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/157580/title-photo-logo-shirt-157580.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Bear', price: 17.90, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/724889/pexels-photo-724889.png?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Gazelio', price: 8.90, description: "kjasndksfkj", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjWV_2e1TvzEvjpYEH-FFuHP4DDwbHUxLkIJE1wcQk3Z_haUOPHw'},
  {name: 'Gazelio', price: 8.90, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/220139/pexels-photo-220139.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Just Do It', price: 15.90, description: "kjasndksfkj", image: 'https://www.dreemarket.com/wp-content/uploads/2018/08/Star-Wars-t-shirt-Captain-America-T-Shirts-Men-Cotton-Diamond-Train-Hard-Man-T-Shirt.jpg'},
  {name: 'Beer', price: 12.90, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/1267343/pexels-photo-1267343.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Work Hard', price: 14.90, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/1566412/pexels-photo-1566412.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'}

])

User.create!([
  {username: "Rufat" , name: "Ruaf", email: "123" , password: "123"},
  {username: "Randy" , name: "Ruaf", email: "123" , password: "123"},
  {username: "Ayana" , name: "Ruaf", email: "123" , password: "123"},
  {username: "Tony" , name: "Ruaf", email: "123" , password: "123"},
  {username: "Ken" , name: "Ruaf", email: "123" , password: "123"},
  {username: "James" , name: "Ruaf", email: "123" , password: "123"}

  ])

UserItem.create!([
    {user_id: User.first.id, item_id: Item.first.id},
    {user_id: User.last.id, item_id: Item.last.id}
  ])
