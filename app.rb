require("bundler/setup")
require("pry")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/stores') do
  @all_stores = Store.all()
  erb(:stores)
end

post('/stores/create_new_store') do
  name_input = params[:name_input]
  @new_store = Store.create({:name => name_input})
  if @new_store.save
    redirect('/stores')
  else
    erb(:error)
  end
end


get('/brands') do
  @all_brands = Brand.all()
  erb(:brands)
end

post('/brands/create_new_brand') do
  name_input = params[:name_input]
  @new_brand = Brand.create({:name => name_input})
  if @new_brand.save
    redirect('/brands')
  else
    erb(:error)
  end
end
