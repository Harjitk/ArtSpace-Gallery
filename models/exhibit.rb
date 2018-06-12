require_relative('../db/sql_runner')

class Exhibit

  attr_accessor :title, :exhibit_date, :category, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @exhibit_date = options['exhibit_date']
    @category = options['category']
    @artist_id = options['artist_id'].to_i
  end

  def save()
     sql = "INSERT INTO exhibits
     (
       title,
       exhibit_date,
       category,
       artist_id
     )
     VALUES
     (
       $1, $2, $3, $4
     )
     RETURNING id"
     values = [@title, @exhibit_date, @category, @artist_id]
     result = SqlRunner.run(sql, values)
     id = result.first['id']
     @id = id
  end

  def update()
      sql = "UPDATE exhibits
      SET
      (
        title,
        exhibit_date,
        category,
        artist_id
      ) =
      (
        $1, $2, $3, $4
      )
      WHERE id = $5"
      values = [@title, @exhibit_date, @category, @artist_id]
      SqlRunner.run(sql, values)
    end

    def self.delete_all()
   sql = "DELETE FROM exhibits;"
   SqlRunner.run(sql)
 end

    def delete()
       sql = "DELETE FROM exhibits
       WHERE id = $1"
       values = [@id]
       SqlRunner.run(sql, values)
     end

    def artist()
      sql = "SELECT * FROM artists WHERE id = $1"
      values = [@artist_id]
      result = SqlRunner.run(sql, values)
      artist = Artist.new(result.first)
      return artist
    end

  def self.all()
      sql = "SELECT * FROM exhibits"
      exhibits = SqlRunner.run( sql )
      result = exhibits.map{ |exhibit| Exhibit.new( exhibit) }
      return result
    end

    def self.find( id )
    sql = "SELECT * FROM exhibits WHERE id = $1"
    value = [id]
    exhibit = SqlRunner.run(sql, value)
    result = Exhibit.new( exhibit.first )
    return result
  end

  def assign_exhibit_to_an_artist(id)
     sql = "UPDATE exhibits
     SET artist_id = $1
     WHERE id = $2"
     values = [id, @id]
     SqlRunner.run( sql, values )
   end
end
