require "test_helper"

class ArtistTest < ActiveSupport::TestCase
  test "el artista debe ser valido" do
    # Esto intentará cargar el fixture 'one' que está vacío
    # Y fallará con "NotNullViolation"
    artist = artists(:one)
    assert artist.valid?
  end
end
