require 'spec_helper'

describe 'GET /' do
  it 'displays a new button' do
    visit root_path
    page.should have_link('New Album')
  end

  it 'displays New Album form', :js => true do
    visit root_path
    click_link('New Album')
    page.should have_button('Create Album')
    page.should have_link('Cancel')
  end

  describe 'JS clear_form' do
    it 'clears the album form', :js => true do
      visit root_path
      click_link('New Album')
      click_link('Cancel')
      page.should_not have_button('Create Album')
    end
  end

  describe 'GET /albums/1' do
    it 'displays album show page' do
      visit root_path
      click_link('New Album')
      fill_in('Name', :with=> 'Dogs')
      click_button('Create Album')
      click_link('Dogs')
      current_path.should eq 'albums/1'
    end
  end


end