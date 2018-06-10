require("minitest/autorun")
require_relative("../exhibit")

class TestExhibit < MiniTest::Test

  def setup
    options = {"id" => 1, "title" => "The persistent of memory",
      "date" => 1931, "artist_id" => 1}

      @exhibit = Exhibit.new(options)
  end

    def test_exhibit_has_a_title
      result = @exhibit.title()
      assert_equal("The persistent of memory", result)
    end

    def test_exhibit_has_a_date
      result = @exhibit.date()
      assert_equal(1931, result)
    end

    def test_title
          assert_equal("Reflektor Distortion", @exhibit1.title)
        end

        def test_year
          assert_equal(2016, @exhibit1.year)
        end

end
