# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

typs= Typ.create([{discription: 'horizontal',id:1},{discription: 'vertikal',id:2}] )
Location.create([{name: 'admin',id:1},{name:  'Seite',id:2}])
User.create([{email:'admin@web.de',encrypted_password: '$2a$10$S2qILIsMS5q6aR7TSRv/u.20EkyCR4J4KhzaYiEkJxuMo1Wzh0plq',id:1}])