require("minitest/autorun")
require_relative("../artist")

class TestArtist < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Edward Ruscha",
      "dob" => "1937"}
    @artist = Artist.new(options)
  end


def test_artist_name
    result = @artist.name()
    assert_equal("Edward Ruscha", result)
  end

  def test_artist_dob
    result = @artist.dob()
    assert_equal(1937, result)
  end
  #
end
