# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'merryjun@msn.com', password: 'hanage0614', password_confirmation: 'hanage0614')
AdminUser.create!(email: 'kuroharu0430@gmail.com', password: 'sazanka3033', password_confirmation: 'sazanka3033')

Customer.create!(name:'customer',email: 'test@test', password: 'password', password_confirmation: 'password')
Customer.create!(name:'test_user',email: 'test@gmail.com', password: '123456', password_confirmation: '123456')

Product.create!([
  {name:'瀬戸内の舎 第1期',text:'瀬戸内海に浮かぶ島の一角にある会社の社員寮として使用されていた建物をホテルへとリノベーションした。海辺に建っているため、各室からは瀬戸内海の島々が一望でき、夕日も望むことができる。', image: open("public/images/奈良県飛鳥村/IMG_0137.jpg"), date: '2016-12-24', place:'香川県',purpose:'ホテル', scale:'RC造４階建て', site_area:1025, building_area:539, architectural_area:2025},
  {name:'瀬戸内の舎 第2期',text:'瀬戸内の舎の第2期計画である。1階エントランスホールに展示スペースを増築し、地元で活動する芸術家たちの作品を展示できるようにした。また、宿泊者に利用してもらうためのプールも設置した。', image: open("public/images/brightly moonlight/IMG_0135.jpg"), date: '2018-02-05', place:'香川県',purpose:'ホテル・展示室', scale:'RC造４階建て', site_area:1025, building_area:604, architectural_area:2090},
  {name:'3 - B O X の家',text:'単身者及び夫婦向け3戸の賃貸住宅の計画である。外観は3つのBOXをずらして変化を与え、それぞれのBOXごとに住戸を割り当てている。各住戸で間取りは異なり三角屋根の部分にはロフトを計画するなど変化に富んだ空間とした。	', image: open("public/images/3BOX/IMG_1751.JPG"), date: '2018-06-14', place:'兵庫県',purpose:'共同住宅', scale:'鉄骨造２階建て', site_area:203, building_area:114, architectural_area:225},
  {name:'大 開 口 の 家',text:'東京都内に建つ夫婦子ども2人の住宅である。南面に木製の大開口を設けリビング+吹抜けとすることで人が自然と集まり、家の中心となるよう計画した。	', image: open("public/images/大開口の家/DSCF5286.jpg"), date: '2018-11-15', place:'東京都',purpose:'個人住宅', scale:'木造２階建', site_area:137, building_area:67, architectural_area:171},
])

ProductImage.create!([
  {src:open('public/images/奈良県飛鳥村/IMG_0136.jpg'),product_id:'1'},
  {src:open('public/images/奈良県飛鳥村/IMG_0138.jpg'),product_id:'1'},
  {src:open('public/images/奈良県飛鳥村/IMG_0139.jpg'),product_id:'1'},
  {src:open('public/images/奈良県飛鳥村/IMG_0140.jpg'),product_id:'1'},

  {src:open('public/images/brightly moonlight/IMG_0134.jpg'),product_id:'2'},
  {src:open('public/images/brightly moonlight/IMG_0135.jpg'),product_id:'2'},
  {src:open('public/images/brightly moonlight/IMG_0141.jpg'),product_id:'2'},

  {src:open('public/images/3BOX/IMG_1734.JPG'),product_id:'3'},
  {src:open('public/images/3BOX/IMG_1748.JPG'),product_id:'3'},
  {src:open('public/images/3BOX/IMG_1751.JPG'),product_id:'3'},
  {src:open('public/images/3BOX/IMG_1758.JPG'),product_id:'3'},
  {src:open('public/images/3BOX/IMG_1759.JPG'),product_id:'3'},
  
  {src:open('public/images/大開口の家/DSCF5283.jpg'),product_id:'4'},
  {src:open('public/images/大開口の家/DSCF5290.jpg'),product_id:'4'},
  {src:open('public/images/大開口の家/DSCF5291.jpg'),product_id:'4'},
  {src:open('public/images/大開口の家/DSCF5313.jpg'),product_id:'4'},
  {src:open('public/images/大開口の家/DSCF5314.jpg'),product_id:'4'},
  {src:open('public/images/大開口の家/DSCF5330.jpg'),product_id:'4'},
 

])

Message.create!([
  {text:'ようこそ', roll:0,customer_id:'3'},
  {text:'テスト用なのでご自由に使ってみてください',roll:1,customer_id:'3'},
  {text:'管理者は右',roll:0,customer_id:'3'},
  {text:'お客様は左にメッセージが表示されます',roll:1,customer_id:'3'},
  {text:'管理者のみ写真の添付ができます', image:open('public/photo-message.jpg'),roll:0,customer_id:'3'},

])