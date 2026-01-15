require "test_helper"

class ArtistTest < ActiveSupport::TestCase
  test "AUDITORIA: El sistema NO debe permitir guardar artistas vacios" do
    # 1. Creamos un artista totalmente vacío
    artist = Artist.new 

    # 2. Intentamos guardarlo. 
    # Si el código es "malo" (sin validaciones), 'save' devolverá true.
    guardado = artist.save

    # 3. La prueba exige que NO se haya guardado.
    # Si 'guardado' es true, esta línea lanzará el ERROR ROJO que buscas.
    assert_not guardado, "FALLO CRITICO: Se permitió registrar un artista sin nombre ni datos."
  end
end
