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
  {name: 'Lamp Bulb', price: 1290, image: 'https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Problems', price: 1090, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/1311590/pexels-photo-1311590.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Legendary', price: 990, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/157580/title-photo-logo-shirt-157580.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Bear', price: 1790, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/724889/pexels-photo-724889.png?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Gazelio', price: 890, description: "kjasndksfkj", image: 'https://images.pexels.com/photos/220139/pexels-photo-220139.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'},
  {name: 'Just Do It', price: 1590, description: "kjasndksfkj", image: 'https://www.luke1977.com/live/categorypages/5b.jpg'},

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
