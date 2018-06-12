require("minitest/autorun")
require_relative("../exhibit")

class TestExhibit < MiniTest::Test

  def setup
    options = {"id" => 1, "title" => "Pay Nothing Until April",
      "exhibit_date" => "2003", "category" => "Abstract Art", "artist_id" => 1, "picture" => "/images/EdwardRuscha.jpg"}
      @exhibit = Exhibit.new(options)
    end


    def test_exhibit_title
      result = @exhibit.title()
      assert_equal("Pay Nothing Until April", result)
    end

    def test_exhibit_date
      result = @exhibit.exhibit_date()
      assert_equal("2003", result)
    end

  end
