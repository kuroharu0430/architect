# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'merryjun@msn.com', password: 'hanage0614', password_confirmation: 'hanage0614')
AdminUser.create!(email: 'kuroharu0430@gmail.com', password: 'sazanka3033', password_confirmation: 'sazanka3033')
AdminUser.create!(email: 'admin@gmail.com', password: '123456', password_confirmation: '123456')

Customer.create!(name:'奥野 潤',  email: 'merryjun@msn.com', password: 'hanage0614', password_confirmation: 'hanage0614')
Customer.create!(name:'kuroharu',email: 'kuroharu0430@gmail.com', password: 'sazanka3033', password_confirmation: 'sazanka3033')
Customer.create!(name:'test_user',email: 'test@gmail.com', password: '123456', password_confirmation: '123456')

Product.create!([
  {name:'奈良県明日香村',text:'光にこだわってみました。', image: open("public/images/奈良県飛鳥村/IMG_0137.jpg"), date: '2016-06-15', place:'奈良県飛鳥村',purpose:'', scale:'', site_area:'', building_area:'', architectural_area:''},
  {name:'brightly',text:'ピアノやバーカウンターを置いてください', image: open("public/images/brightly moonlight/IMG_0135.jpg"), date: '2016-06-15', place:'赤坂',purpose:'', scale:'', site_area:'', building_area:'', architectural_area:''},
  {name:'美術館',text:'この時期桜は咲いていませんね。', image: open("public/images/大阪市立美術館/IMG_0129.jpg"), date: '2016-06-15', place:'大阪市',purpose:'', scale:'', site_area:'', building_area:'', architectural_area:''},
  {name:'たて穴式住居',text:'ローソク持参でお願いします。そして、空を見上げてごらん。', image: open("public/images/たて穴式住居/IMG_0147.jpg"), date: '2016-06-15', place:'京都府長岡天神',purpose:'', scale:'', site_area:'', building_area:'', architectural_area:''},
])
Product_image.create!([
  {src:open('public/images/奈良県飛鳥村/IMG_0136.jpg'),prodduct_id:'1'},
  {src:open('public/images/奈良県飛鳥村/IMG_0138.jpg'),prodduct_id:'1'},
  {src:open('public/images/奈良県飛鳥村/IMG_0139.jpg'),prodduct_id:'1'},
  {src:open('public/images/奈良県飛鳥村/IMG_0140.jpg'),prodduct_id:'1'},

  {src:open('public/images/brightly moonlight/IMG_0134.jpg'),prodduct_id:'2'},
  {src:open('public/images/brightly moonlight/IMG_0135.jpg'),prodduct_id:'2'},
  {src:open('public/images/brightly moonlight/IMG_0141.jpg'),prodduct_id:'2'},

  {src:open('public/images/大阪市立美術館/IMG_0127.jpg'),prodduct_id:'3'},
  {src:open('public/images/大阪市立美術館/IMG_0128.jpg'),prodduct_id:'3'},
  {src:open('public/images/大阪市立美術館/IMG_0130.jpg'),prodduct_id:'3'},
  {src:open('public/images/大阪市立美術館/IMG_0131.jpg'),prodduct_id:'3'},
  {src:open('public/images/大阪市立美術館/IMG_0132.jpg'),prodduct_id:'3'},
  
  {src:open('public/images/たて穴式住居/IMG_0142.jpg'),prodduct_id:'4'},
  {src:open('public/images/たて穴式住居/IMG_0143.jpg'),prodduct_id:'4'},
  {src:open('public/images/たて穴式住居/IMG_0144.jpg'),prodduct_id:'4'},
  {src:open('public/images/たて穴式住居/IMG_0145.jpg'),prodduct_id:'4'},
  {src:open('public/images/たて穴式住居/IMG_0146.jpg'),prodduct_id:'4'},


])

# Message.create!()