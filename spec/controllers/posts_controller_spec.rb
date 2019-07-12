require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:post) { [
    Post.create(id: 1, title: 'super post', body: 'super super body')
  ]}

  it 'get index page' do
    get :index
    expect(response).to render_template(:index)
  end

  it 'get new page' do
    get :new
    expect(response).to render_template(:new)
  end

  it 'get show page' do
    get :show, params: { id: post }
    expect(response).to render_template(:show)
  end

end