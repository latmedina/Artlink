FactoryBot.define do
  factory :publication do
    name { "Publicación de prueba" }
    description { "Descripción de prueba" }
    price { 100 }
    picture { Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/test.jpg"), "image/jpeg") }
    association :user
  end
end
