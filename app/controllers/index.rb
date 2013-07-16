get '/' do
  @items = Item.order(:position)
  erb :index
end
