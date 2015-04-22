require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the score path', {:type => :feature}) do
  it('processes the user entry and returns the scrabbled score of the word submitted') do
    visit('/')
    fill_in('word', :with => 'green')
    click_button('Send')
    expect(page).to have_content('6')
  end
end
