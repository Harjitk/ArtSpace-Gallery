require("minitest/autorun")
require_relative("../artist")

class TestArtist < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Salvador Dali",
      "style" => "Surrealism"}
    @artist = Artist.new(options)
  end

  artist1 = Artist.new({
    'first_name' => 'Edward',
    'last_name' => 'Ruscha',
    'dob' => '1937'
    })




  def test_artist_has_a_name
    result = @artist.name()
    assert_equal("Salvador Dali", result)
  end

  def test_artist_has_style
    result = @artist.style()
    assert_equal("Surrealism", result)
  end


  def test_name
        assert_equal("Carsten Nicolai", @artist1.name)
      end

      def test_dob
        assert_equal(1965, @artist1.dob)
      end

end
