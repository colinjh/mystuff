Product.destroy_all

Product.create!([
  {name: "Silver Spoon", description: nil, image: "http://www.leopardantiques.com/object/image/download/641/Regimental%20Silver%20spoon%20-%20Inns%20of%20Court%20Rifle%20Volunteers_Regimental%20spoon.Jpg", price: nil, available: true, user_id: 4},
  {name: "Blue vase", description: "a Blue vase", image: "http://res.cloudinary.com/mystuffapp/image/upload/v1450174251/ypkgzabfaym9ykkovmvu.jpg", price: "$20", available: true, user_id: 5},
  {name: "Vintage Teapot", description: "Vintage teapot", image: "http://res.cloudinary.com/mystuffapp/image/upload/v1450174409/ejm7meyyt1rx9ukwo9lo.jpg", price: "$10", available: true, user_id: 5},
  {name: "Vintage Tea Cup", description: "1920's Tea Cup", image: "http://res.cloudinary.com/mystuffapp/image/upload/v1450241224/uetbjxmjfeapwach5kmb.jpg", price: "1920", available: true, user_id: 5},
  {name: "purple moose", description: "purple moose", image: "http://site.inmod.com/images/avalisa/avl-silhouette-moose-stretched-wall-art-purple-lg.jpg", price: "$3", available: true, user_id: 3},
  {name: "Pink Vase", description: nil, image: "http://cdn0.rubylane.com/shops/scholaertcassel/6073.1L.jpg", price: nil, available: true, user_id: 3},
  {name: "Horn Rimmed Glasses", description: "horned Rimmed glasses", image: "https://s-media-cache-ak0.pinimg.com/736x/02/9a/39/029a3953b3f1bef85bc745f2fae64684.jpg", price: "$10", available: true, user_id: 4},
  {name: "Grey Wolf", description: nil, image: "http://res.cloudinary.com/mystuffapp/image/upload/v1450155399/vpfjtlfzmdosd5yfze0v.jpg", price: nil, available: true, user_id: 4},
  {name: "Candle Holders", description: "grey candle holders", image: "http://res.cloudinary.com/mystuffapp/image/upload/v1450158740/rzg8vtlspo2qarymlsdn.jpg", price: "$20", available: true, user_id: 4}
])
Purchase.destroy_all
Purchase.create!([
  {user_id: 5, product_id: 14, price: nil},
  {user_id: 5, product_id: 15, price: nil},
  {user_id: 5, product_id: 2, price: nil},
  {user_id: 5, product_id: 14, price: nil},
  {user_id: 5, product_id: 14, price: nil},
  {user_id: 5, product_id: 14, price: nil},
  {user_id: 5, product_id: 3, price: nil},
  {user_id: 5, product_id: 15, price: nil},
  {user_id: 5, product_id: 15, price: nil},
  {user_id: 5, product_id: 3, price: nil},
  {user_id: 5, product_id: 23, price: nil},
  {user_id: 5, product_id: 23, price: nil},
  {user_id: 5, product_id: 23, price: nil},
  {user_id: 5, product_id: 23, price: nil}
])
User.destroy_all
User.create!([
  {name: "test", email: "test@gmail.com", address: nil, latitude: nil, longitude: nil, password: "chicken", password_confirmation: "chicken"},
  {name: "test2", email: "test2@gmail.com", address: nil, latitude: nil, longitude: nil, password: "chicken", password_confirmation: "chicken"},
  {name: "Wolf", email: "wolf@wolf.com", address: "37 Bligh St Sydney", latitude: -33.866033, longitude: 151.209812, password: "chicken", password_confirmation: "chicken"},
  {name: "harry", email: "harry@gmail.com", address: "232 Oxford St, Bondi Junction", latitude: -33.890294, longitude: 151.243426, password: "chicken", password_confirmation: "chicken"},
  {name: "Lauren", email: "lauren@gmail.com", address: "17 Proctor Av, Kingsgrove", latitude: -33.930264, longitude: 151.102589, password: "chicken", password_confirmation: "chicken"}
])
