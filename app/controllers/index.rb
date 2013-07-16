get '/' do
  @items = Item.order(:position)
  erb :index
end

post '/items/order' do
  
end
