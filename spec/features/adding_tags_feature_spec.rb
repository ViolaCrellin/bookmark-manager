require 'spec_helper'
require './app/app.rb'

feature 'Adding tags' do

  scenario 'Adding a tag' do

    sign_up_good
    @user = User.last(user_name: 'KokoKitscha')
    create_links('www.wordpress.com', 'Wordpress', 'blog')
    create_links('www.wordpress.com', 'Wordpress', 'blog')
    visit '/tags/blog'
    expect(page).to have_content ('blog')
    # expect(@user.links.tags).to include('blog')

  end

end
