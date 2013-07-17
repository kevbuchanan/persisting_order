get '/' do
  @items = Item.order(:position)
  erb :index
end

post '/items/order' do
  params[:order].each_with_index do |id, index|
    item = Item.find(id)
    item.update_attribute(:position, index.to_i)
  end
  redirect to('/')
end
