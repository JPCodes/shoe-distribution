require('capybara/rspec')
require('./app')
require('spec_helper')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

before() do
  test_store = Store.create({:name => 'Shoe Central'})
  test_brand = Brand.create({:name => 'Nike'})
end

describe('Views /stores', {:type => :feature}) do
  it('tests before()') do
    visit('/stores')
    expect(page).to have_content('Shoe central')
  end
end
