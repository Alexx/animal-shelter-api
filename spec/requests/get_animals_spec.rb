require 'rails_helper'
FactoryBot.find_definitions

describe "get all animals route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 3, animal_type: "Cat")
                   FactoryBot.create_list(:animal, 3, animal_type: "Dog")
                   FactoryBot.create_list(:animal, 3, animal_type: "Cat")}

  before { get '/v1/'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(9)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get all cats route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 5, animal_type: "Cat")}

  before { get '/v1/all_cats'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get all dogs route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 4, animal_type: "Dog")}

  before { get '/v1/all_dogs'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(4)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get all rabbits route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 6, animal_type: "Rabbit")}

  before { get '/v1/all_rabbits'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(6)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get largest cat", :type => :request do
  let!(:animals) { FactoryBot.create(:animal, name: "Ben", animal_type: "Cat", weight: 5)
                   FactoryBot.create(:animal, name: "George", animal_type: "Cat", weight: 10)}

  before { get '/v1/largest_cat'}

  it 'returns largest cat' do
    expect(JSON.parse(response.body)[0]["name"]).to eq("George")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get largest dog", :type => :request do
  let!(:animals) { FactoryBot.create(:animal, name: "Ben", animal_type: "Dog", weight: 50)
                   FactoryBot.create(:animal, name: "George", animal_type: "Dog", weight: 70)}

  before { get '/v1/largest_dog'}

  it 'returns largest dog' do
    expect(JSON.parse(response.body)[0]["name"]).to eq("George")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get largest rabbit", :type => :request do
  let!(:animals) { FactoryBot.create(:animal, name: "Ben", animal_type: "Rabbit", weight: 5)
                   FactoryBot.create(:animal, name: "George", animal_type: "Rabbit", weight: 2)}

  before { get '/v1/largest_rabbit'}

  it 'returns largest rabbit' do
    expect(JSON.parse(response.body)[0]["name"]).to eq("Ben")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get youngest cat", :type => :request do
  let!(:animals) { FactoryBot.create(:animal, name: "Ben", animal_type: "Cat", age: 5)
                   FactoryBot.create(:animal, name: "George", animal_type: "Cat", age: 2)}

  before { get '/v1/youngest_cat'}

  it 'returns youngest cat' do
    expect(JSON.parse(response.body)[0]["name"]).to eq("George")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get youngest dog", :type => :request do
  let!(:animals) { FactoryBot.create(:animal, name: "Ben", animal_type: "Dog", age: 50)
                   FactoryBot.create(:animal, name: "George", animal_type: "Dog", age: 70)}

  before { get '/v1/youngest_dog'}

  it 'returns youngest dog' do
    expect(JSON.parse(response.body)[0]["name"]).to eq("Ben")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get youngest rabbit", :type => :request do
  let!(:animals) { FactoryBot.create(:animal, name: "Ben", animal_type: "Rabbit", age: 5)
                   FactoryBot.create(:animal, name: "George", animal_type: "Rabbit", age: 2)}

  before { get '/v1/youngest_rabbit'}

  it 'returns youngest rabbit' do
    expect(JSON.parse(response.body)[0]["name"]).to eq("George")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
