# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ name: 'Laptop' }, { name: 'Desktop' }, { name: 'Monitor' }])

manufacturers = Manufacturer.create([{ name: 'Apple' }, { name: 'Acer' }, { name: 'Samsung' }])

models = Model.create([
  { manufacturer: manufacturers.first, name: 'MacBook Pro (16-inch, 2019)' },
  { manufacturer: manufacturers.first, name: 'MacBook Pro (15-inch, 2017)' },
  { manufacturer: manufacturers.second, name: 'V206HQLABMD 19.5"' },
  { manufacturer: manufacturers.third, name: 'SE450 Series LS24E45KDLV/GO 23.6"' }
])

locations = Location.create([
  {
      name: 'In Primary User\'s Possession'
  },
  {
      name: 'Office',
      address_line1: '1234 Main Street',
      address_line2: 'Third Floor',
      city: 'CITY',
      state: 'XX',
      zip_code: '12345'
  }
])

assets = Asset.create([
  {
      asset_tag: 'LA20001',
      serial_number: 'FAKESERIAL123456789',
      category: categories.first,
      model: models.second,
      primary_user: 'Jane Doe',
      location: locations.second,
      purchase_date: '2020-01-01',
      warranty_expiry: '2021-01-01',
      notes: 'This is a note'
  }
])
