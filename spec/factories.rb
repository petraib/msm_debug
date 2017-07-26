# spec/factories/articles.rb
 require Rails.root.join("spec", "support", "increasing_random.rb")

FactoryGirl.define do
  factory :director do
    dob "January 1, 1970"
    name "Someone"
    bio "Someone's background"
    image_url "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Lake_Bondhus_Norway_2862.jpg/1280px-Lake_Bondhus_Norway_2862.jpg"
    #sequence(:id, IncreasingRandom.new) { |n| n.value }
    #director_id = 1
  end
  
  factory :movie do
    title "The Godfather: Part VI"
    year 2016
    duration 180
    description "Not a real movie"
    image_url "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Lake_Bondhus_Norway_2862.jpg/1280px-Lake_Bondhus_Norway_2862.jpg"
    #sequence(:director_id, IncreasingRandom.new) { |n| "#{n}" }
    #association :director, factory: :director
    director
  end

  factory :actor do
    dob "January 1, 1970"
    name "Someone"
    bio "Someone's background"
    image_url "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Lake_Bondhus_Norway_2862.jpg/1280px-Lake_Bondhus_Norway_2862.jpg"
    #sequence(:id, IncreasingRandom.new) { |n| "#{n}" }
  end

  factory :role do
    character_name "Superman"
    movie
    actor
  end
  
  sequence(:email) { |n| "person-#{n}@example.com" }

  factory :user do
    email
  end

  factory :post do
    user
    title "Hello"
  end



end