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
  new_store = Store.create({:name => name_input})
  redirect('/stores')
end
