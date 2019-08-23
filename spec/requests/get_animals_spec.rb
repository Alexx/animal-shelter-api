require 'rails_helper'
FactoryBot.find_definitions

describe "get all animals route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 3, animal_type: "Cat")}

  before { get '/'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(3)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get all cats route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 5, animal_type: "Cat")}

  before { get '/all_cats'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get all dogs route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 4, animal_type: "Dog")}

  before { get '/all_dogs'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(4)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get all rabbits route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 6, animal_type: "Rabbit")}

  before { get '/all_rabbits'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(6)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

# describe "get largest cat", :type => :request do
#   let!(:animals) { FactoryBot.create_list(:animal, 6, animal_type: "Rabbit")}
#
#   before { get '/all_rabbits'}
#
#   it 'returns all animals' do
#     expect(JSON.parse(response.body).size).to eq(6)
#   end
#
#   it 'returns status code 200' do
#     expect(response).to have_http_status(:success)
#   end
# end
