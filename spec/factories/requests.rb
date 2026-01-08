FactoryBot.define do
  factory :request do
    title { "Solicitud de prueba" }
    description { "Descripción de prueba" }
    contact { "correo@example.com" }
    status { "pendiente" }
    rating { nil }
    picture { Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/test.jpg"), "image/jpeg") }

    association :publication

    # sender es el usuario logueado
    association :sender, factory: :user

    # receiver es el dueño de la publicación
    receiver { publication.user }
  end
end
