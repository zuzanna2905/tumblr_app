require 'rails_helper'

RSpec.feature "New Post Creating", type: :feature do
  let(:post) { Post.new(title: 'super post', body: 'super super body')}

  scenario 'create new post' do
    visit new_post_path
    expect(page).to have_content('Write new post')
    within find("form") do
      fill_in "post_title", :with => post.title
      fill_in "post_body", :with => post.body
      click_button "post_submit"
    end
    expect(page).to have_content(post.title)
    expect(page).to have_content(post.body)
    expect(page).to have_content(post.created_at)
  end
end
