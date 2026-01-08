require "test_helper"

class SmokeTest < ActionDispatch::IntegrationTest
  test "la pagina de login carga correctamente" do
    # 1. Vamos a la página de login (que es pública)
    get "/users/sign_in"
    
    # 2. Esperamos un 200 OK (Éxito total)
    assert_response :success
    
    # 3. Verificamos que haya un formulario en la pantalla
    assert_select "form"
  end
end