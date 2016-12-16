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

describe('Add a new store and see the store information', {:type => :feature}) do
  it('allows a user to click a store to see its details') do
    visit('/stores')
    fill_in('name_input', :with => 'Nike outlet')
    click_button('Add store')
    click_link('Nike outlet')
    expect(page).to have_content('Manage Store: Nike outlet')
  end
end

describe('Add a brand to the store', {:type => :feature}) do
  it('allows a user to add a brand to a store') do
    visit('/stores')
    click_link('Shoe central')
    click_button('Add brand to this store')
    expect(page).to have_content('Nike products')
  end
end
