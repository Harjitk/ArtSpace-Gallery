require_relative('../db/sql_runner')

class Exhibit

  attr_accessor :title, :exhibit_date, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @exhibit_date = options['exhibit_date']
    @artist_id = options['artist_id'].to_i
  end
end
