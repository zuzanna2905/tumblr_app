require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  it 'get index' do
    get :index
    expect(response).to render_template(:index)
  end

  it 'get new' do
    get :new
    expect(response).to render_template(:new)
  end
end
