require("minitest/autorun")
require_relative("../exhibit")

class TestExhibit < MiniTest::Test

  def setup
    options = {"id" => 1, "title" => "Pay Nothing Until April",
      "exhibit_date" => "10 June 2018", "artist_id" => 1}
      @exhibit = Exhibit.new(options)
  end


    def test_exhibit_title
      result = @exhibit.title()
      assert_equal("Pay Nothing Until April", result)
    end

    def test_exhibit_date
      result = @exhibit.exhibit_date()
      assert_equal("10 June 2018", result)
    end

end
