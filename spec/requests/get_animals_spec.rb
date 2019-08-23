require 'rails_helper'
FactoryBot.find_definitions

describe "get all animals route", :type => :request do
  let!(:animals) { FactoryBot.create(:animal)}

  before { get '/'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
