require 'faker'

20.times { |i| Item.create(name: Faker::Company.bs, position: i)}